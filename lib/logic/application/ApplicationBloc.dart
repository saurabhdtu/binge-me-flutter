import 'dart:async';

import 'package:binge_me/constants/constants.dart';
import 'package:binge_me/logic/application/app_events.dart';
import 'package:binge_me/logic/application/app_states.dart';
import 'package:binge_me/logic/common/internet_conn.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  StreamSubscription _internetStreamSubscription;

  ApplicationBloc(NetworkConnectionCubit networkConnectionCubit)
      : super(LoadingState()) {
    _internetStreamSubscription = networkConnectionCubit.stream.listen((event) {
      if (event is NetworkConnectedState) {
        add(NetworkEvent(state));
      } else if (event is NetworkDisconnectedState) {
        add(NetworkEvent(event));
      }
    });
    Constants.PLATFORM_METHOD_CHANNEL.setMethodCallHandler(_methodCallHandler);
    add(LoadApplicationEvent());
  }

  @override
  Stream<ApplicationState> mapEventToState(ApplicationEvent event) async* {
    if (event is LoadApplicationEvent) {
      yield ApplicationDataLoadedState();
    }
  }

  Future<void> _methodCallHandler(MethodCall methodCall) async {}

  @override
  Future<Function> close() {
    _internetStreamSubscription.cancel();
    super.close();
  }
}
