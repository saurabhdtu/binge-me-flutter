import 'dart:async';

import 'package:binge_me/constants/enums.dart';
import 'package:binge_me/logic/application/app_events.dart';
import 'package:binge_me/logic/application/app_states.dart';
import 'package:binge_me/logic/common/base_bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NetworkConnectionState extends ApplicationState {}

class NetworkInitialState extends NetworkConnectionState {}

class NetworkConnectedState extends NetworkConnectionState {
  ConnectionType connectionType;
  NetworkConnectedState(this.connectionType);
}

class NetworkEvent extends ApplicationEvent {
  NetworkConnectionState networkConnectionState;
  NetworkEvent(this.networkConnectionState):super();
}

class NetworkDisconnectedState extends NetworkConnectionState {}

class NetworkConnectionCubit extends Cubit<NetworkConnectionState> {
  StreamSubscription _streamSubscription;
  final Connectivity _connectivity;
  NetworkConnectionCubit(this._connectivity) : super(NetworkInitialState()) {
    _streamSubscription = _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.mobile) {
        emitNetworkConnected(ConnectionType.MOBILE);
      } else if (result == ConnectivityResult.wifi) {
        emitNetworkConnected(ConnectionType.WIFI);
      }else if (result == ConnectivityResult.none) {
        emitNetworkDisconnected();
      }
    });
  }
  void emitNetworkConnected(ConnectionType connectionType) {
    emit(NetworkConnectedState(connectionType));
  }

  void emitNetworkDisconnected() {
    emit(NetworkDisconnectedState());
  }

  @override
  Future<Function> close() {
    _streamSubscription.cancel();
    super.close();
  }
}
