import 'package:binge_me/logic/application/application.dart';
import 'package:flutter/cupertino.dart';

class AppColor {
  static Color colorAppTheme =
      isDarkTheme() ? Color(0xff000000) : Color(0xffffffff);
  static Color colorPrimaryYellow =
      isDarkTheme() ? Color(0xffCDDF41) : Color(0xffCDDF41);
  static Color primaryTextColor =
      isDarkTheme() ? Color(0xffffffff) : Color(0xff181818);
  static Color primaryButtonTextColor =
      isDarkTheme() ? Color(0xff262626) : Color(0xffffffff);
  static Color primaryButtonBgColor =
      isDarkTheme() ? Color(0xffCDDF41) : Color(0xff5b0000);
}
