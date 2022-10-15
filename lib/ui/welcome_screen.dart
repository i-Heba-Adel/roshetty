import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roshetty/ui/login_screen.dart';
import 'package:roshetty/ui/registration_screen.dart';
import 'package:roshetty/ui/shared/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: tealColorD6.withAlpha(90),
              width: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset('assets/images/back_background.png'),
                  Image.asset('assets/images/welcome_screen.png'),
                ],
              ),
            ),
            buildButton(text: 'Register' , function: (){
              Navigator.push( context , MaterialPageRoute(
                  builder: (context) =>  const RegistrationScreen()),
              );
            }),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.grey,
                      width: 120,
                      height: 1,
                    ),
                  ),
                  Text(
                    'or',
                    style: TextStyle(
                      color: greyColor58,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.grey,
                      width: 120,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            buildButton(text: 'Log in' , function: (){
              Navigator.push(
                context , MaterialPageRoute(builder: (context) => const LoginScreen())
              );
            }),
          ],
        ),
      ),
    );
  }

  Padding buildButton({required String text , required Function() function}) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 50 , horizontal: 35),
            child: MaterialButton(
              onPressed: function,
              color: tealColor1B,
              height: 60,
              minWidth: double.infinity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                  text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: whiteColorFF
                ),
              ),
            ),
          );
  }
}
