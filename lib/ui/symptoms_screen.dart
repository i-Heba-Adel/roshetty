import 'package:flutter/material.dart';

class SymptomsScreen extends StatelessWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Symptoms Screen'
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
