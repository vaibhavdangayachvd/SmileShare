import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smileshare/application/auth/auth_bloc.dart';
import 'package:smileshare/application/auth/bloc.dart';
import 'package:smileshare/application/request/bloc.dart';
import 'package:smileshare/core/routes.dart';
import 'package:smileshare/domain/request/request.dart';

class RequestItemWidget extends StatelessWidget {
  final Request request;

  const RequestItemWidget(this.request);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentAmount = request.currentAmount.value.fold((l) => -1, (r) => r);
    final requiredAmount =
        request.requiredAmount.value.fold((l) => -1, (r) => r);
    double progress;
    if (currentAmount == -1 || requiredAmount == -1) {
      progress = 0;
    } else {
      progress = currentAmount / requiredAmount;
    }
    return Container(
      padding: const EdgeInsets.all(20),
      height: 600,
      width: double.infinity,
      child: LayoutBuilder(
        builder: (ctx, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (request.verified)
                FadeInImage.assetNetwork(
                  placeholder: 'assets/images/category_placeholder.jpg',
                  image: request.imageUrl.value.fold((l) => '', (r) => r),
                  height: constraint.maxHeight * .55,
                  width: constraint.maxWidth,
                  fit: BoxFit.fill,
                ),
              if (!request.verified)
                Image.asset(
                  'assets/images/unverified.png',
                  height: constraint.maxHeight * .55,
                  width: constraint.maxWidth,
                  fit: BoxFit.fill,
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    request.title.value.fold((l) => 'Donate', (r) => r),
                    style: theme.textTheme.headline5.copyWith(
                        fontWeight: FontWeight.bold, color: theme.primaryColor),
                  ),
                  const Spacer(),
                  Text(
                      'Added on ${DateFormat.yMMMd().format(request.creationTime)}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Icon(
                        Icons.favorite,
                        size: 50,
                      )),
                  const Spacer(),
                  Flexible(
                    flex: 10,
                    child: Text(
                      request.description.value
                          .fold((l) => 'No Description', (r) => r),
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: constraint.maxWidth,
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (ctx, state) {
                    return state.when(
                      loggedOut: () {
                        return RaisedButton(
                          color: theme.primaryColor,
                          onPressed: () => Navigator.of(context)
                              .pushNamed(Routes.sendOtpPage),
                          child: const Text(
                            'Donate Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
                      loggedIn: (_) {
                        return RaisedButton(
                          color: theme.primaryColor,
                          onPressed: () => _handelDonate(
                              context, currentAmount, requiredAmount),
                          child: const Text(
                            'Donate Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
                      initial: () => const CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'We have reached so far',
                    style: theme.textTheme.headline5.copyWith(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: constraint.maxWidth,
                alignment: Alignment.centerLeft,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1)),
                child: FractionallySizedBox(
                  widthFactor: progress,
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    currentAmount == -1 ? 'Unknown' : currentAmount.toString(),
                    style: theme.textTheme.subtitle2,
                  ),
                  const Spacer(),
                  Text(
                    requiredAmount == -1
                        ? 'Unknown'
                        : requiredAmount.toString(),
                    style: theme.textTheme.subtitle2,
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> _handelDonate(
      BuildContext context, int currentAmount, int requiredAmount) async {
    final data =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final categoryId = data['id'].toString();
    final amountController = TextEditingController();
    final amount = await showDialog(
        context: context,
        child: AlertDialog(
          title: const Text('Donate'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Amount to donate',
                ),
              ),
              const SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(amountController.text);
                },
                child: const Text('Donate'),
              )
            ],
          ),
        ));
    int amountt = int.tryParse(amount.toString());
    amountt = amountt + currentAmount;
    if (amount == null || amountt > requiredAmount) {
      Scaffold.of(context).showSnackBar(const SnackBar(
        content: Text('Invalid Amount'),
      ));
      return;
    }
    BlocProvider.of<RequestBloc>(context).add(RequestEvent.donate(
        categoryId: categoryId,
        requestId: request.id.value.fold((l) => null, (r) => r),
        newAmount: amountt,
        isComplete: amountt == requiredAmount));
  }
}
