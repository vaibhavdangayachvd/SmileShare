import 'package:flutter/material.dart';
import 'package:smileshare/core/routes.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/presentation/home/home_constants.dart';

class AppBarBottomWidget extends StatelessWidget {
  final List<Category> categories;

  const AppBarBottomWidget({Key key, @required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: DropdownButton<String>(
            elevation: 2,
            underline: const SizedBox(),
            icon: Icon(Icons.keyboard_arrow_down),
            hint: Text(
              HomeConstants.selectCategoryHint,
              style: theme.textTheme.subtitle1,
            ),
            onChanged: (e) {
              Navigator.of(context).pushNamed(Routes.requestPage, arguments: {
                'name': categories
                    .firstWhere((element) =>
                        element.id.value.fold((l) => null, (r) => r) == e)
                    .categoryName.value.fold((l) => 'Unknown', (r) => r),
                'id': e,
              });
            },
            items: _getCategoryMenuItems(context),
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }

  List<DropdownMenuItem<String>> _getCategoryMenuItems(BuildContext context) {
    return categories.map((category) {
      return DropdownMenuItem<String>(
        value: category.id.value.fold((failure) => null, (value) => value),
        child: category.categoryName.value.fold(
            (failure) => Text(HomeConstants.defaultCategoryName),
            (value) => Text(value)),
      );
    }).toList();
  }
}
