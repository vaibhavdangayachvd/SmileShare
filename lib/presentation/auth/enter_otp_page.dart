import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/auth/bloc.dart';
import 'package:smileshare/application/verify_otp/bloc.dart';
import 'package:smileshare/configure_injection.dart';
import 'package:smileshare/presentation/auth/widgets/enter_otp_body.dart';

class EnterOtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (ctx, state) {
        state.maybeWhen(
          loggedIn: (_) => Navigator.of(context).pop(),
          orElse: () {},
        );
      },
      child: BlocProvider<VerifyOtpBloc>(
        create: (ctx) => getIt<VerifyOtpBloc>(),
        child: SafeArea(
          child: Scaffold(
            body: EnterOtpBody(),
          ),
        ),
      ),
    );
  }
}
