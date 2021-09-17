import 'dart:async';
import 'package:empmaster/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 3), () {
      // 5s over, navigate to a new page
      Navigator.pushNamed(
        context,
        Constants.home,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final width = mq.size.width;
    final height = mq.size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Lottie.asset('assets/json/splash.json', width: width * .8),
          ),
          // ignore: prefer_const_constructors
          Text(
            'Please Wait... We are loading your data.',
            style: TextStyle(color: Colors.black, fontSize: width * .035),
          ),
        ],
      ),
    );
  }
}
