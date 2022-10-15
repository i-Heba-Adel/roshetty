import 'package:flutter/material.dart';

import 'colors.dart';

Widget buildContainer(String title , String description , String buttonText , String image){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Container(
      decoration: BoxDecoration(
        color: teal10Color60 ,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(title , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(description , style: TextStyle( fontSize: 11 , color: grey40Color
                    ), maxLines: 3,),
                  ),
                  MaterialButton(
                    minWidth: 150,
                    color: tealColor1B,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},
                    child: Text(buttonText , style: TextStyle(
                      color: whiteColorFF ,
                    ),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(image),
          ),
        ],
      ),
    ),
  );
}