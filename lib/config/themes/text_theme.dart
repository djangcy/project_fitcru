import 'package:flutter/material.dart';

class AppTextTheme {
  TextTheme get _baseTextTheme => const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        headline3: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
        headline4: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.black,
        ),
        headline5: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.black,
        ),
        subtitle1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        subtitle2: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
        bodyText1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      );

  TextTheme get lightTextTheme => TextTheme(
        headline1: _baseTextTheme.headline1!.copyWith(
          color: Colors.black,
        ),
        headline2: _baseTextTheme.headline2!.copyWith(
          color: Colors.black,
        ),
        headline3: _baseTextTheme.headline3!.copyWith(
          color: Colors.black,
        ),
        headline4: _baseTextTheme.headline4!.copyWith(
          color: Colors.black,
        ),
        headline5: _baseTextTheme.headline5!.copyWith(
          color: Colors.black,
        ),
        subtitle1: _baseTextTheme.subtitle1!.copyWith(
          color: Colors.black,
        ),
        subtitle2: _baseTextTheme.subtitle2!.copyWith(color: Colors.black54),
        bodyText1: _baseTextTheme.bodyText1!.copyWith(
          color: Colors.black,
        ),
        bodyText2: _baseTextTheme.bodyText2!.copyWith(
          color: Colors.black,
        ),
      );

  TextTheme get darkTextTheme => TextTheme(
        headline1: _baseTextTheme.headline1!.copyWith(
          color: Colors.white,
        ),
        headline2: _baseTextTheme.headline2!.copyWith(
          color: Colors.white,
        ),
        headline3: _baseTextTheme.headline3!.copyWith(
          color: Colors.grey[900],
        ),
        headline4: _baseTextTheme.headline4!.copyWith(
          color: Colors.grey[900],
        ),
        headline5: _baseTextTheme.headline5!.copyWith(
          color: Colors.grey[900],
        ),
        subtitle1: _baseTextTheme.subtitle1!.copyWith(
          color: Colors.grey[900],
        ),
        subtitle2: _baseTextTheme.subtitle2!
            .copyWith(color: Colors.white.withOpacity(0.87)),
        bodyText1: _baseTextTheme.bodyText1!.copyWith(
          color: Colors.white,
        ),
        bodyText2: _baseTextTheme.bodyText2!.copyWith(
          color: Colors.white,
        ),
      );
}
