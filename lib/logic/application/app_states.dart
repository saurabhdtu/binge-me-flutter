import 'package:binge_me/logic/common/base_bloc.dart';

abstract class ApplicationState extends BaseState{}

class LoadSplash extends ApplicationState{}

class LoadingState extends ApplicationState {}

class ApplicationDataLoadedState extends ApplicationState {}

class ApplicationErrorState extends ApplicationState {}