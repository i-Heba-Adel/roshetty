import 'package:flutter/material.dart';

class PeoplesScreen extends StatelessWidget {
  const PeoplesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Peoples Screen'
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
