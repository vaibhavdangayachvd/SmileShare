import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/auth/auth_bloc.dart';
import 'package:smileshare/configure_injection.dart';
import 'package:smileshare/core/routes.dart';
import 'package:smileshare/presentation/auth/send_otp_page.dart';
import 'package:smileshare/presentation/core/constants.dart';
import 'package:smileshare/presentation/home/home_page.dart';
import 'package:smileshare/presentation/requests/request_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (ctx) => getIt<AuthBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: CoreConstants.materialAppTitle,
        routes: <String, WidgetBuilder>{
          Routes.homePage: (_) => HomePage(),
          Routes.sendOtpPage: (_) => SendOtpPage(),
          Routes.requestPage: (_) => RequestPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
