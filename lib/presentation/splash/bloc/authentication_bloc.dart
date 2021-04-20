import 'dart:async';

import 'package:binge_me/presentation/splash/models/auth_events.dart';
import 'package:binge_me/presentation/splash/models/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthenticationBloc extends Bloc<SplashEvent, AuthState> {
  AuthenticationBloc() : super(SplashStateLoading()){}

  @override
  Stream<AuthState> mapEventToState(SplashEvent event) async* {
    if (event is SplashLoadingEvent) {
      yield SplashStateLoaded();
    }
  }
}
