import 'package:smileshare/domain/category/category.dart';

abstract class CategoryRepository {
  Stream<List<Category>> getCategories();
}
