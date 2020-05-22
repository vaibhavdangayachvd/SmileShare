import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smileshare/application/request/bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class CompletedRequestBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<RequestBloc, RequestState>(
      builder: (ctx, state) {
        if (state.isInitial) {
          return const Center(child: CircularProgressIndicator());
        }
        final requests = state.requests
            .where((element) => element.completed == true)
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
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text(
                  requests[index].title.value.fold((l) => 'Unknown', (r) => r)),
              subtitle: Text(
                  'Completed on ${DateFormat.yMMMd().format(requests[index].completionTime)}'),
              trailing: IconButton(
                onPressed: () =>
                    _launchVideo(context, requests[index].videoUrl),
                icon: Icon(Icons.videocam),
              ),
            );
          },
          separatorBuilder: (ctx, index) => const Divider(),
          itemCount: requests.length,
        );
      },
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
    );
  }

  Future<void> _launchVideo(BuildContext context, String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Scaffold.of(context).showSnackBar(const SnackBar(
        content: Text('Video not available ! Check back later'),
      ));
    }
  }
}
