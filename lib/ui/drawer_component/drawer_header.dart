import 'package:flutter/material.dart';
import 'package:roshetty/ui/shared/colors.dart';
class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {

  var colorLight = tealColor60;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: teal40Color60,
      width: double.infinity,
      height: 220,
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 76,
            decoration: BoxDecoration(
              color: pinkColorEE,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/user.png',
                ),
              ),
            ),
          ),
          Text(
            'Alaa Mohammed',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'alaamohammed@gmail.com',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),
          ),
        ],
      ),
    );
  }
}
