import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/send_otp/bloc.dart';
import 'package:smileshare/application/send_otp/send_otp_event.dart';
import 'package:smileshare/presentation/auth/constants.dart';
import 'package:smileshare/presentation/auth/enter_otp_page.dart';
import 'package:smileshare/presentation/auth/widgets/clipped_header.dart';
import 'package:smileshare/presentation/core/constants.dart';

class SendOtpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          ClippedHeader(
            title: AuthConstants.mobileNumber,
            icon: Icons.smartphone,
            subtitle: AuthConstants.sendOtpMessage,
          ),
          BlocConsumer<SendOtpBloc, SendOtpState>(
            builder: (ctx, state) {
              final bloc = BlocProvider.of<SendOtpBloc>(context);
              return Column(
                children: <Widget>[
                  CountryCodePicker(
                    onChanged: (code) {
                      bloc.add(SendOtpEvent.countryCodeChanged(code.dialCode));
                    },
                    initialSelection: state.countryCode,
                    favorite: const [
                      AuthConstants.initialCountryCode,
                      AuthConstants.initialCountrySelection
                    ],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: BlocBuilder<SendOtpBloc, SendOtpState>(
                      builder: (ctx, state) => Form(
                        child: TextFormField(
                          autovalidate: state.autoValidate,
                          keyboardType: TextInputType.phone,
                          onChanged: (mobileNumber) {
                            bloc.add(
                                SendOtpEvent.mobileNumberChanged(mobileNumber));
                          },
                          validator: (_) {
                            return bloc.state.mobileNumber.value.fold(
                              (l) => AuthConstants.invalidMobileNumber,
                              (r) => null,
                            );
                          },
                          maxLength: 10,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: AuthConstants.mobileNumber,
                          ),
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: theme.primaryColor,
                    onPressed: state.isSubmitting
                        ? null
                        : () {
                            bloc.add(const SendOtpEvent.sendOtp());
                          },
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
                  (l) {
                    Scaffold.of(context).hideCurrentSnackBar();
                    return Scaffold.of(context).showSnackBar(SnackBar(
                      content: l.when(
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
                  (r) => Navigator.of(context).push(MaterialPageRoute<void>(
                    builder: (ctx) => BlocProvider.value(
                      value: BlocProvider.of<SendOtpBloc>(context),
                      child: EnterOtpPage(),
                    ),
                  )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
