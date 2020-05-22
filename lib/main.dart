import 'package:flutter/material.dart';
import 'package:smileshare/configure_injection.dart';
import 'package:smileshare/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  runApp(MyApp());
}