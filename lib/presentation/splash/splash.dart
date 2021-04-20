import 'package:binge_me/presentation/splash/bloc/authentication_bloc.dart';
import 'package:binge_me/presentation/splash/models/auth_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(child: SafeArea(child:
        BlocBuilder<AuthenticationBloc, AuthState>(
            builder: (BuildContext context, AuthState splashState) {
      return Scaffold(
          body: Container(
              alignment: Alignment.center,
              child: Text("Binge Me", style: TextStyle(fontSize: 15.0))));
    })));
  }
}
