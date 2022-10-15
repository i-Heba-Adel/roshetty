import 'package:flutter/material.dart';
import 'colors.dart';

Widget buildMaterialButton({required String text ,required Function() function}){
  return MaterialButton(
    height: 55,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35),
    ),
    minWidth: double.infinity,
    color: tealColor1B,
    onPressed: function,
    child: Text(
      text,
      style: TextStyle(
          color: whiteColorFF,
          fontSize: 16,
          fontWeight: FontWeight.w400
      ),
    ),
  );
}