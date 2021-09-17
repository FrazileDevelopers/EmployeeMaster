import 'package:empmaster/constants/constants.dart';
import 'package:empmaster/constants/palette.dart';
import 'package:empmaster/pages/home/home.dart';
import 'package:empmaster/pages/splash/splash.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constants.splash:
        return MaterialPageRoute(
          builder: (_) => Splash(),
        );
      case Constants.home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            backgroundColor: Palettes.primaryColor,
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
