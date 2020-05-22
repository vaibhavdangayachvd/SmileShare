import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:smileshare/configure_injection.iconfig.dart';

GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configure()async => $initGetIt(getIt);
