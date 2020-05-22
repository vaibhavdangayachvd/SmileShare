import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/home/bloc.dart';
import 'package:smileshare/presentation/home/widgets/category_grid_widget.dart';
import 'package:smileshare/presentation/home/widgets/home_app_bar_widget.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (ctx, state) {},
      builder: (ctx, state) {
        return state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          empty: () => Center(
            child: Text(
              'No Data',
              style: theme.textTheme.headline3,
            ),
          ),
          hasData: (categories) {
            return Container(
              height: mediaQuery.size.height,
              width: mediaQuery.size.width,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: mediaQuery.size.width,
                    child: HomeAppBarWidget(categories: categories),
                  ),
                  Positioned(
                    top: 110,
                    child: Container(
                      height: mediaQuery.size.height - 110,
                      width: mediaQuery.size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CategoryGridWidget(categories: categories),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
