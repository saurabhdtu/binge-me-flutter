import 'package:flutter/material.dart';

class AppText extends Text {
  AppText(
      String data,
      String style,
      double size, {
        Key key,
        textColor: Colors.black,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        maxLines,
        semanticsLabel,
        double letterSpacing,
      }) : super(data,
      style: TextStyle(
          fontSize: size,
          fontFamily: style,
          color: textColor,
          letterSpacing: letterSpacing),
      key: key,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel);
}

class TextRegular extends AppText {
  TextRegular(
      String text, {
        Key key,
        textSize = 12.0,
        fontFamily = "regular",
        textColor,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        semanticsLabel,
        letterSpacing,
      }) : super(
    text,
    fontFamily,
    textSize,
    key: key,
    textColor: textColor,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    letterSpacing: letterSpacing,
  );
}

class TextLight extends AppText {
  TextLight(
      String text, {
        Key key,
        textSize = 12.0,
        fontFamily = "light",
        textColor,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        semanticsLabel,
        letterSpacing,
      }) : super(
    text,
    fontFamily,
    textSize,
    key: key,
    textColor: textColor,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    letterSpacing: letterSpacing,
  );
}

class TextSemiBold extends AppText {
  TextSemiBold(
      String text, {
        Key key,
        textSize = 12.0,
        fontFamily = "semi-bold",
        textColor,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        semanticsLabel,
        letterSpacing,
      }) : super(
    text,
    fontFamily,
    textSize,
    key: key,
    textColor: textColor,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    letterSpacing: letterSpacing,
  );
}

class TextBold extends AppText {
  TextBold(
      String text, {
        Key key,
        textSize = 12.0,
        fontFamily = "bold",
        textColor,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        semanticsLabel,
        letterSpacing,
      }) : super(
    text,
    fontFamily,
    textSize,
    key: key,
    textColor: textColor,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    letterSpacing: letterSpacing,
  );
}

class TextExtraBold extends AppText {
  TextExtraBold(
      String text, {
        Key key,
        textSize = 12.0,
        fontFamily = "extra-bold",
        textColor,
        textAlign,
        textDirection,
        locale,
        softWrap,
        overflow,
        textScaleFactor,
        maxLines,
        semanticsLabel,
        letterSpacing,
      }) : super(
    text,
    fontFamily,
    textSize,
    key: key,
    textColor: textColor,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    letterSpacing: letterSpacing,
  );
}