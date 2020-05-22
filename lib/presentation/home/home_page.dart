import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/home/bloc.dart';
import 'package:smileshare/configure_injection.dart';
import 'package:smileshare/presentation/home/widgets/drawer.dart';
import 'package:smileshare/presentation/home/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (ctx) => getIt<HomeBloc>(),
      child: SafeArea(
        child: Scaffold(
          drawer: AppDrawer(),
          body: HomeBody(),
        ),
      ),
    );
  }
}
