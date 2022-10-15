import 'package:flutter/material.dart';
import 'package:roshetty/ui/page_view_screens.dart';
import 'package:roshetty/ui/shared/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  int timeOfDelayInSeconds = 3;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: timeOfDelayInSeconds) , (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroToTheApplication()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/splash.png' , width: 260, height: 260,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                        alignment: Alignment(-0.1,0.1),
                        child: Image.asset('assets/images/ellipse_1.png'),
                    ),
                    Align(
                        alignment: Alignment(0,-0.1),
                        child: Image.asset('assets/images/ellipse_2.png'),
                    ),

                  ],
                ),
                Text(
                  'R O S H E T T Y',
                  style: TextStyle(
                    color: whiteColorFF,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
    );
  }
}

