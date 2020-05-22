import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/request/bloc.dart';
import 'package:smileshare/presentation/requests/widgets/request_item_widget.dart';

class RequestBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<RequestBloc, RequestState>(
      listener: (ctx, state) {
        state.errorOption.fold(
          () => () {},
          (failureOrNot) => failureOrNot.fold(
            (failure) => Scaffold.of(context).showSnackBar(SnackBar(
              content: failure.when(
                unexpected: () => const Text('Unexpected Error'),
                permissionDenied: () => const Text('Unexpected Error'),
              ),
            )),
            (r) => () {},
          ),
        );
      },
      builder: (ctx, state) {
        if (state.isInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        final requests = state.requests
            .where((element) => element.completed == false)
            .toList();
        if (requests.isEmpty) {
          return Center(
            child: Text(
              'No Data',
              style: theme.textTheme.headline3,
            ),
          );
        }
        return ListView.separated(
          itemCount: requests.length,
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemBuilder: (ctx, index) {
            return RequestItemWidget(requests[index]);
          },
        );
      },
    );
  }
}
