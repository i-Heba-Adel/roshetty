import 'package:flutter/material.dart';

Widget buildSearchContainerInfo({required String image , required String name , required String type}){
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: Row(
      children: [
        Expanded(
          child: CircleAvatar(
            radius: 25,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Text(name),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
              type
          ),
        ),
      ],
    ),
  );
}