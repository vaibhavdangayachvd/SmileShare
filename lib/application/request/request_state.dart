import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/request/product_failure.dart';
import 'package:smileshare/domain/request/request.dart';

part 'request_state.freezed.dart';

@freezed
abstract class RequestState with _$RequestState {
  const factory RequestState({
    bool isInitial,
    List<Request> requests,
    Option<Either<ProductFailure, Unit>> errorOption,
  }) = _RequestState;

  factory RequestState.initial() =>
      RequestState(isInitial: true,requests: [], errorOption: none());

  factory RequestState.empty() =>
      RequestState(isInitial:false,requests: [], errorOption: none());
}
