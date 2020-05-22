import 'package:dartz/dartz.dart';
import 'package:smileshare/domain/request/product_failure.dart';
import 'package:smileshare/domain/request/request.dart';

abstract class RequestRepository {
  Stream<List<Request>> getRequests(String categoryId);

  Future<Either<ProductFailure, Unit>> addRequest(
      String categoryId, String title, String description, int amount);

  Future<Either<ProductFailure, Unit>> donate(
      {String categoryId, String requestId, int newAmount, bool isComplete});
}
