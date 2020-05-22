import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/core/constants.dart';
import 'package:smileshare/domain/category/category.dart';
import 'package:smileshare/presentation/home/home_constants.dart';
import 'package:smileshare/presentation/home/widgets/appbar_bottom_widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  final List<Category> categories;

  const HomeAppBarWidget({Key key, @required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(Constants.appName),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBarBottomWidget(
          categories: categories,
        ),
      ),
      actions: _appBarActions,
    );
  }

  List<Widget> get _appBarActions => [
        DropdownButton<String>(
          underline: const SizedBox(),
          onChanged: (w) {},
          elevation: 2,
          iconEnabledColor: Colors.white,
          icon: Icon(Icons.more_vert),
          items: _dropDownMenuItems,
        ),
      ];

  List<DropdownMenuItem<String>> get _dropDownMenuItems => [
        DropdownMenuItem<String>(
          value: HomeConstants.exit,
          onTap: () {
            exit(0);
          },
          child: const Text(HomeConstants.exit),
        ),
      ];
}
