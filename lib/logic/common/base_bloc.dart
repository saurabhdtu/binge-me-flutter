import 'dart:async';

import 'package:binge_me/logic/common/internet_conn.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseEvent {}

class BaseState {}

class BaseBloc<T extends BaseEvent, Y extends BaseState> extends Bloc<BaseEvent, BaseState> {
  StreamSubscription _internetStreamSubscription;

  BaseBloc(BaseState state, {NetworkConnectionCubit networkConnectionCubit})
      : super(state) {
    if (networkConnectionCubit != null) {
      _internetStreamSubscription =
          networkConnectionCubit.stream.listen((event) {
        if (event is NetworkConnectedState) {
          add(NetworkEvent(state));
        } else if (event is NetworkDisconnectedState) {
          add(NetworkEvent(event));
        }
      });
    }
  }

  @override
  Stream<BaseState> mapEventToState(BaseEvent event) async* {
    if (event is NetworkEvent) {
      yield event.networkConnectionState;
    }
  }

  @override
  Future<void> close() {
    if (_internetStreamSubscription != null) {
      _internetStreamSubscription.cancel();
    }
    return super.close();
  }
}
