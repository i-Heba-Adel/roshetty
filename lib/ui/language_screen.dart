import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Language Screen'
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: (){
                Navigator.pop(
                  context
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
