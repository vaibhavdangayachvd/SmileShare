import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/core/paths.dart';
import 'package:smileshare/domain/request/product_failure.dart';
import 'package:smileshare/domain/request/request.dart';
import 'package:smileshare/domain/request/request_repository.dart';
import 'package:smileshare/infrastructure/request/document_request_mapper.dart';

@LazySingleton(as: RequestRepository)
class RequestRepositoryImpl implements RequestRepository {
  final Firestore fireStore;

  RequestRepositoryImpl(this.fireStore);

  @override
  Stream<List<Request>> getRequests(String categoryId) {
    return fireStore
        .collection(Paths.categoriesPath)
        .document(categoryId)
        .collection(Paths.requests)
        .orderBy('created', descending: true)
        .snapshots()
        .map(_mapDocumentToCategory);
  }

  List<Request> _mapDocumentToCategory(QuerySnapshot data) {
    final list = <Request>[];
    for (final document in data.documents) {
      list.add(document.toRequest());
    }
    return list;
  }

  @override
  Future<Either<ProductFailure, Unit>> addRequest(
      String categoryId, String title, String description, int amount) async {
    try {
      await fireStore
          .collection(Paths.categoriesPath)
          .document(categoryId)
          .collection(Paths.requests)
          .add(_convertToJson(title, description, amount));
      final document = await fireStore
          .collection(Paths.categoriesPath)
          .document(categoryId)
          .get();
      final currentCount = int.parse(document.data['requestCount'].toString());
      await fireStore
          .collection(Paths.categoriesPath)
          .document(categoryId)
          .updateData({
        'requestCount': currentCount + 1,
      });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        return left(const ProductFailure.unexpected());
      }
    } catch (e) {
      return left(const ProductFailure.unexpected());
    }
  }

  Map<String, dynamic> _convertToJson(
      String title, String description, int amount) {
    return {
      'title': title,
      'description': description,
      'currentAmount': 0,
      'requiredAmount': amount,
      'created': DateTime.now().toIso8601String(),
      'isCompleted': false,
      'isVerified': false,
      'imageUrl':'',
      'videoUrl':'',
    };
  }

  @override
  Future<Either<ProductFailure, Unit>> donate(
      {String categoryId,
      String requestId,
      int newAmount,
      bool isComplete}) async {
    try {
      await fireStore
          .collection(Paths.categoriesPath)
          .document(categoryId)
          .collection(Paths.requests)
          .document(requestId)
          .updateData({
        'currentAmount': newAmount,
        'isCompleted': isComplete,
        if (isComplete) 'complete': DateTime.now().toIso8601String(),
      });
      if (isComplete) {
        final document =
            fireStore.collection(Paths.categoriesPath).document(categoryId);
        final currentCount =
            int.parse((await document.get()).data['requestCount'].toString());
        await document.updateData({'requestCount': currentCount - 1});
      }
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ProductFailure.permissionDenied());
      } else {
        return left(const ProductFailure.unexpected());
      }
    } catch (e) {
      return left(const ProductFailure.unexpected());
    }
  }
}
