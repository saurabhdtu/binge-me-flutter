import 'package:binge_me/constants/strings.dart';
import 'package:binge_me/feature/splash/bloc/auth_cubit.dart';
import 'package:binge_me/feature/splash/models/auth_steams.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
            child: Scaffold(
                body: Container(
                    alignment: Alignment.center,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("${imgResource}logo.png")),
                          Text("Binge Me", style: TextStyle(fontSize: 15.0)),
                          BlocBuilder<AuthenticationBloc, SplashState>(builder:
                              (BuildContext context, SplashState splashState) {
                            if (splashState is SplashLoadingState) {
                              return Padding(
                                  padding: EdgeInsets.only(top: 40.0),
                                  child: Lottie.asset(
                                      "${animResource}loader.json"));
                            } else if (splashState is SplashLoginState) {
                              return ElevatedButton(
                                  onPressed: () => {},
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          15.0, 8.0, 15.0, 8.0),
                                      child: Stack(children: [
                                        Align(alignment: Alignment.centerLeft,
                                        child: SvgPicture.asset(
                                            "${imgResource}ic_google.svg")),
                                        Align(alignment: Alignment.center,
                                            child: Text)),

                                      ])));
                            } else
                              return Padding();
                          })
                        ])))));
  }
}
