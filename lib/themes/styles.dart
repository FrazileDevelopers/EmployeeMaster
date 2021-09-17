import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ThemeData(
      primaryColor: const Color(0xFF380C84),
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white),

        headline2: TextStyle(color: Colors.white),

        headline3: TextStyle(color: Colors.white),

        headline4: TextStyle(color: Colors.white),

        headline5: TextStyle(color: Colors.white),

        headline6: TextStyle(color: Colors.white),

        subtitle1: TextStyle(color: Colors.white),

        subtitle2: TextStyle(color: Colors.white),

        bodyText1: TextStyle(color: Colors.white),

        /// Body Style
        bodyText2: TextStyle(color: Colors.white),

        caption: TextStyle(color: Colors.white),

        button: TextStyle(color: Colors.white),

        overline: TextStyle(color: Colors.white),
      ),
    );
  }
}
