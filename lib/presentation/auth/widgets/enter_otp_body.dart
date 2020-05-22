import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/send_otp/bloc.dart';
import 'package:smileshare/application/verify_otp/bloc.dart';
import 'package:smileshare/presentation/auth/constants.dart';
import 'package:smileshare/presentation/auth/widgets/clipped_header.dart';
import 'package:smileshare/presentation/core/constants.dart';

class EnterOtpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          ClippedHeader(
            title: AuthConstants.otp,
            icon: Icons.textsms,
            subtitle: AuthConstants.otpSentMessage,
          ),
          BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
            builder: (ctx, state) {
              final bloc = BlocProvider.of<VerifyOtpBloc>(context);
              return Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: TextField(
                      onChanged: (otp) {
                        bloc.add(VerifyOtpEvent.otpChanged(otp));
                      },
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: AuthConstants.enterOtp,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    AuthConstants.didNotReceiveOtp,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  FlatButton(
                    onPressed: () {
                      final mobileNumber = BlocProvider.of<SendOtpBloc>(context)
                          .state
                          .mobileNumber
                          .value
                          .fold((error) => '', (correct) => correct);
                      bloc.add(VerifyOtpEvent.resendOtp(mobileNumber));
                      Scaffold.of(context).hideCurrentSnackBar();
                      Scaffold.of(context).showSnackBar(const SnackBar(
                        content: Text('Resend request initiated'),
                      ));
                    },
                    child: Text(
                      AuthConstants.resendOtp,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RaisedButton(
                    color: theme.primaryColor,
                    onPressed: state.isSubmitting
                        ? null
                        : () => bloc.add(const VerifyOtpEvent.verifyOtp()),
                    child: const Text(
                      CoreConstants.next,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  if (state.isSubmitting) const LinearProgressIndicator(),
                ],
              );
            },
            listener: (ctx, state) {
              state.failureOrSuccessOption.fold(
                () => () {},
                (either) => either.fold(
                  (failure) {
                    Scaffold.of(context).hideCurrentSnackBar();
                    return Scaffold.of(context).showSnackBar(SnackBar(
                      content: failure.when(
                        serverFailure: () =>
                            const Text(AuthConstants.serverFailure),
                        incorrectOtp: () =>
                            const Text(AuthConstants.incorrectOtp),
                        internalError: () =>
                            const Text(AuthConstants.internalFailure),
                        codeExpired: () =>
                            const Text(AuthConstants.codeExpired),
                        quotaExceeded: () =>
                            const Text(AuthConstants.quotaExceeded),
                      ),
                    ));
                  },
                  (r) {},
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
