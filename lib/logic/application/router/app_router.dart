import 'package:binge_me/feature/splash/bloc/auth_cubit.dart';
import 'package:binge_me/feature/splash/splash.dart';
import 'package:binge_me/feature/unknown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (context) => BlocProvider<AuthenticationBloc>(
                create: (context) => AuthenticationBloc(),
                key: UniqueKey(),
                child: SplashPage()));
      default:
        return MaterialPageRoute(builder: (context) => UnknownPage());
    }
  }
}

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Duration get transitionDuration => Duration(milliseconds: 150);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget currentPage) {
    return FadeTransition(opacity: animation, child: currentPage);
  }
}
