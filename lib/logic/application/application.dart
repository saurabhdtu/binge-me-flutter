import 'package:binge_me/constants/color_constants.dart';
import 'package:binge_me/logic/application/ApplicationBloc.dart';
import 'package:binge_me/logic/application/router/app_router.dart';
import 'package:binge_me/logic/common/internet_conn.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Application extends StatelessWidget {
  AppRouter appRouter;
  Connectivity connectivity;

  Application(this.appRouter, this.connectivity) : super(key: Key(""));

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<NetworkConnectionCubit>(
              create: (context) => NetworkConnectionCubit(connectivity)),
          BlocProvider<ApplicationBloc>(
              create: (_) => ApplicationBloc(
                  BlocProvider.of<NetworkConnectionCubit>(context))),
        ],
        child: MaterialApp(
          title: "",
          initialRoute: "/",
          theme: ThemeData(
              primaryColor: AppColor.colorAppTheme,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          onGenerateRoute: appRouter.onGenerateRoute,
        ));
  }
}

bool isDarkTheme() => false;
