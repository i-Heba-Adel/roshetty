import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Chat Screen'
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
