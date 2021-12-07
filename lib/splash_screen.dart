import 'package:arabic_lan/main.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';



class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new MyApp(),
        title: Text(""'أهلا وسهلا!Welcome\n'"",
          style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: Image.asset('assets/splash.jpg',width: double.infinity,height:double.infinity-100),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 200.0,
        loaderColor: Colors.red
    ));
  }
}
