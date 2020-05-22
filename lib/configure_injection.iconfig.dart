// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:smileshare/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smileshare/infrastructure/auth/firebase_auth_facade.dart';
import 'package:smileshare/domain/auth/i_auth_facade.dart';
import 'package:smileshare/infrastructure/request/request_repository_impl.dart';
import 'package:smileshare/domain/request/request_repository.dart';
import 'package:smileshare/application/send_otp/send_otp_bloc.dart';
import 'package:smileshare/application/verify_otp/verify_otp_bloc.dart';
import 'package:smileshare/application/auth/auth_bloc.dart';
import 'package:smileshare/infrastructure/category/category_repository_impl.dart';
import 'package:smileshare/domain/category/category_repository.dart';
import 'package:smileshare/application/home/home_bloc.dart';
import 'package:smileshare/application/request/request_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuthInstance);
  g.registerLazySingleton<Firestore>(
      () => firebaseInjectableModule.fireStoreInstance);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>()));
  g.registerLazySingleton<RequestRepository>(
      () => RequestRepositoryImpl(g<Firestore>()));
  g.registerFactory<SendOtpBloc>(() => SendOtpBloc(g<IAuthFacade>()));
  g.registerFactory<VerifyOtpBloc>(() => VerifyOtpBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(g<Firestore>()));
  g.registerFactory<HomeBloc>(() => HomeBloc(g<CategoryRepository>()));
  g.registerFactory<RequestBloc>(() => RequestBloc(g<RequestRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
