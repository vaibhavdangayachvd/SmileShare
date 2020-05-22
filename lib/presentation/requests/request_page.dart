import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smileshare/application/auth/auth_bloc.dart';
import 'package:smileshare/application/auth/auth_state.dart';
import 'package:smileshare/application/request/bloc.dart';
import 'package:smileshare/configure_injection.dart';
import 'package:smileshare/core/routes.dart';
import 'package:smileshare/domain/core/value_objects.dart';
import 'package:smileshare/presentation/requests/widgets/completed_request_body.dart';
import 'package:smileshare/presentation/requests/widgets/request_body.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _amountController = TextEditingController();
  String categoryId, categoryName;

  @override
  void didChangeDependencies() {
    final data =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    categoryId = data['id'].toString();
    categoryName = data['name'].toString();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RequestBloc>(
      create: (ctx) =>
          getIt<RequestBloc>()..add(RequestEvent.subscribeTo(categoryId)),
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: _appBar,
            body: TabBarView(
              children: <Widget>[
                RequestBody(),
                CompletedRequestBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar get _appBar => AppBar(
        title: Text(categoryName),
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(child: Text('Pending')),
            Tab(child: Text('Completed')),
          ],
        ),
        actions: <Widget>[
          BlocBuilder<AuthBloc, AuthState>(
            builder: (ctx, state) {
              return state.when(
                loggedOut: () {
                  return IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Routes.sendOtpPage),
                  );
                },
                loggedIn: (user) {
                  return IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => _showAddRequestDialog(ctx),
                  );
                },
                initial: () {
                  return const Text('Loading..');
                },
              );
            },
          )
        ],
      );

  void _saveForm(BuildContext context) {
    if (_formKey.currentState.validate()) {
      final name = _titleController.text;
      final desc = _descriptionController.text;
      final amount = int.parse(_amountController.text);
      BlocProvider.of<RequestBloc>(context).add(
        RequestEvent.addRequest(
          categoryId,
          name,
          desc,
          amount,
        ),
      );
      Navigator.of(context).pop();
    }
  }

  void _showAddRequestDialog(BuildContext context) {
    final theme = Theme.of(context);
    showDialog(
      context: context,
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        title: const Text('Add Request'),
        content: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      final name = ValidName(value);
                      if (name.isValid) {
                        return null;
                      } else {
                        return 'Name should be minimum 3 and max 15 character long';
                      }
                    },
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                    ),
                  ),
                  TextFormField(
                    validator: (value) {
                      final name = ValidDescription(value);
                      if (name.isValid) {
                        return null;
                      } else {
                        return 'Description should be minimum 10 and maximum 100 character long';
                      }
                    },
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                    ),
                    maxLengthEnforced: true,
                    maxLength: 100,
                    minLines: 4,
                    maxLines: 4,
                  ),
                  TextFormField(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Amount required',
                    ),
                  ),
                  const SizedBox(height: 20),
                  RaisedButton(
                    color: theme.primaryColor,
                    onPressed: () => _saveForm(context),
                    child: const Text(
                      'Request',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
