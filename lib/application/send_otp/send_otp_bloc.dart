import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/domain/auth/auth_failure.dart';
import 'package:smileshare/domain/auth/i_auth_facade.dart';
import 'package:smileshare/domain/core/value_objects.dart';
import './bloc.dart';

@injectable
class SendOtpBloc extends Bloc<SendOtpEvent, SendOtpState> {
  final IAuthFacade authFacade;

  SendOtpBloc(this.authFacade);

  @override
  SendOtpState get initialState => SendOtpState.initial();

  @override
  Stream<SendOtpState> mapEventToState(
    SendOtpEvent event,
  ) async* {
    yield* event.when(
      sendOtp: () async* {
        yield* _handelSendOtpEvent();
      },
      mobileNumberChanged: (String number) async* {
        yield* _handelMobileNumberChanged(number);
      },
      countryCodeChanged: (String code) async* {
        yield* _handelCountryCodeChanged(code);
      },
      sendSuccess: () async* {
        yield* _handelSendSuccess();
      },
      sendFailure: (AuthFailure authFailure) async* {
        yield* _handelSendFailure(authFailure);
      },
    );
  }

  Stream<SendOtpState> _handelSendOtpEvent() async* {
    void _handelError(AuthFailure authFailure) {
      add(SendOtpEvent.sendFailure(authFailure));
    }

    void _handelSuccess() {
      add(const SendOtpEvent.sendSuccess());
    }

    if (state.mobileNumber.isValid) {
      yield state.copyWith(
        isSubmitting: true,
        failureOrSuccessOption: none(),
      );
      authFacade.sendOtp(
        mobileNumber: state.mobileNumber,
        handelError: _handelError,
        handelSuccess: _handelSuccess,
        timeout: const Duration(),
      );
    } else {
      yield state.copyWith(
        autoValidate: true,
      );
    }
  }

  Stream<SendOtpState> _handelMobileNumberChanged(String number) async* {
    yield state.copyWith(
      mobileNumber: MobileNumber(state.countryCode + number),
      failureOrSuccessOption: none(),
    );
  }

  Stream<SendOtpState> _handelCountryCodeChanged(String code) async* {
    yield state.copyWith(
      countryCode: code,
      failureOrSuccessOption: none(),
    );
  }

  Stream<SendOtpState> _handelSendSuccess() async* {
    yield state.copyWith(
      isSubmitting: false,
      autoValidate: false,
      failureOrSuccessOption: some(right(unit)),
    );
  }

  Stream<SendOtpState> _handelSendFailure(AuthFailure authFailure) async* {
    yield state.copyWith(
      isSubmitting: false,
      autoValidate: true,
      failureOrSuccessOption: some(left(authFailure)),
    );
  }
}
