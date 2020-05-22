import 'package:flutter/material.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/presentation/home/widgets/category_item_widget.dart';

class CategoryGridWidget extends StatelessWidget {
  final List<Category> categories;

  const CategoryGridWidget({Key key, @required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisSpacing: 10,
      ),
      itemCount: categories.length,
      itemBuilder: (ctx, index) =>
          CategoryItemWidget(category: categories[index]),
    );
  }
}
