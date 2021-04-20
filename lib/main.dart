import 'dart:async';

import 'package:binge_me/logic/application/application.dart';
import 'package:binge_me/logic/application/router/app_router.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  Function originalOnError = FlutterError.onError;
  FlutterError.onError = (FlutterErrorDetails details) async {
    Zone.current.handleUncaughtError(details.exception, details.stack);
    await FirebaseCrashlytics.instance.recordFlutterError(details);
    originalOnError(details);
  };
  runZonedGuarded<Future<void>>(() async {
    runApp(Application(AppRouter(), Connectivity()));
  }, (error, stackTrace) async {
    await FirebaseCrashlytics.instance.recordError(
        error, stackTrace); // Firebase crashlytics recording an error.
    print(stackTrace);
  });
}
