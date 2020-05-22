import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/domain/request/request_repository.dart';
import './bloc.dart';

@injectable
class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final RequestRepository repository;
  StreamSubscription _subscription;

  RequestBloc(this.repository);

  @override
  RequestState get initialState => RequestState.initial();

  @override
  Stream<RequestState> mapEventToState(
    RequestEvent event,
  ) async* {
    yield* event.when(
      addRequest: (categoryId, title, description, amount) async* {
        final result =
            await repository.addRequest(categoryId, title, description, amount);
        yield state.copyWith(
          errorOption: some(result),
        );
      },
      subscribeTo: (id) async* {
        _subscription?.cancel();
        _subscription = repository.getRequests(id).listen((newData) {
          add(RequestEvent.updateData(newData));
        });
      },
      updateData: (newData) async* {
        if (newData.isEmpty) {
          yield RequestState.empty();
        } else {
          yield state.copyWith(
            isInitial: false,
            requests: newData,
            errorOption: none(),
          );
        }
      },
      donate: (String categoryId, String requestId, int newAmount,
          bool isComplete) async* {
        final result = await repository.donate(
          isComplete: isComplete,
          newAmount: newAmount,
          requestId: requestId,
          categoryId: categoryId,
        );
        yield state.copyWith(
          errorOption: some(result),
        );
      },
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    _subscription.cancel();
    return super.close();
  }
}
