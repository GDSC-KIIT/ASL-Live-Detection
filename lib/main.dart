import 'package:asl/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ASL Detection',
      theme: ThemeData(
        primaryColor: Color(0xff375079),
      ),
      home: AnimatedSplash(
        imagePath: 'assets/images/splashScreen.png',
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
        //home: DetectScreen(title: 'ASL Detection'),
        home: LandingPage(),
      ),
    );
  }
}
