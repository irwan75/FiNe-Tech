import 'dart:async';

import 'package:fine_tech/view/ui/main_page.dart';
import 'package:fine_tech/view/widget/rotate_widget.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // startSplashScreen() async {
  //   var duration = const Duration(seconds: 5);
  //   return Timer(duration, () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (_) {
  //         return MainPage();
  //       }),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/images/splash_crop.gif"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RotateWidget(),
                    SizedBox(width: 15),
                    Text(
                      "Loading",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 7),
                    TypewriterAnimatedTextKit(
                      text: ["..."],
                      speed: Duration(seconds: 3),
                      textStyle: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.bottomStart,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
