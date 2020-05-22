import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/auth/auth_bloc.dart';
import 'package:smileshare/application/auth/auth_event.dart';
import 'package:smileshare/application/auth/auth_state.dart';
import 'package:smileshare/core/routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Welcome to Smile Share :)'),
          ),
          const SizedBox(height: 20),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (ctx, state) {
              return state.when(
                loggedOut: () => Card(
                  child: ListTile(
                    onTap: () =>
                        Navigator.of(context).popAndPushNamed(Routes.sendOtpPage),
                    title: Text(
                      'Login',
                      style: theme.textTheme.headline6.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    trailing: Icon(Icons.account_circle),
                  ),
                ),
                loggedIn: (user) {
                  return ListTile(
                    onTap: () => BlocProvider.of<AuthBloc>(context)
                        .add(const AuthEvent.logout()),
                    title: Text(
                      'Logout',
                      style: theme.textTheme.headline6.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    trailing: Icon(Icons.account_box),
                  );
                },
                initial: () => const LinearProgressIndicator(),
              );
            },
          ),
          Card(
            child: ListTile(
              onTap: () => exit(0),
              title: Text(
                'Exit',
                style: theme.textTheme.headline6.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Icon(Icons.exit_to_app),
            ),
          ),
        ],
      ),
    );
  }
}
