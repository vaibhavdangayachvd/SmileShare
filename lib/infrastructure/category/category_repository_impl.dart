import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/core/paths.dart';
import 'package:smileshare/infrastructure/category/document_category_mapper.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/domain/category/category_repository.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final Firestore _fireStore;

  CategoryRepositoryImpl(this._fireStore);

  @override
  Stream<List<Category>> getCategories() {
    return _fireStore
        .collection(Paths.categoriesPath)
        .orderBy('name')
        .snapshots()
        .map(_mapDocumentToCategory);
  }

  List<Category> _mapDocumentToCategory(QuerySnapshot data) {
    final list = <Category>[];
    for (final document in data.documents) {
      list.add(document.toCategory());
    }
    return list;
  }
}
