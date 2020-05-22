import 'package:flutter/material.dart';
import 'package:smileshare/core/routes.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/presentation/home/home_constants.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category category;

  const CategoryItemWidget({Key key, @required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  color: Colors.grey.withOpacity(.3),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .4,
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.fill,
                    placeholder: 'assets/images/category_placeholder.jpg',
                    image: category.imageUrl.value.fold(
                      (l) => '',
                      (r) => r,
                    ),
                  ),
                ),
                Text(
                  category.categoryName.value
                      .fold((l) => HomeConstants.defaultCategoryName, (r) => r),
                  style: theme.textTheme.headline6,
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '${category.requestCount.value.fold((l) => HomeConstants.defaultCategoryCount, (r) => r.toString())} Requests',
                      style: theme.textTheme.caption.copyWith(fontSize: 14),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(Routes.requestPage, arguments: {
                        'name': category.categoryName.value.fold((l) => 'Unknown', (r) => r),
                        'id': category.id.value.fold((l) => null, (r) => r)
                      }),
                      icon: Icon(Icons.arrow_forward),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
