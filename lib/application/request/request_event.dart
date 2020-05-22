import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smileshare/domain/request/request.dart';

part 'request_event.freezed.dart';

@freezed
abstract class RequestEvent with _$RequestEvent {
  const factory RequestEvent.subscribeTo(String id) = _SubscribeTo;

  const factory RequestEvent.updateData(List<Request> currentData) =
      _UpdateData;

  const factory RequestEvent.addRequest(
          String categoryId, String title, String description, int amount) =
      _AddRequest;

  const factory RequestEvent.donate({
    String categoryId,
    String requestId,
    int newAmount,
    bool isComplete,
  }) = _Donate;
}
