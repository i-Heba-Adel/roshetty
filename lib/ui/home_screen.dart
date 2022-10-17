import 'package:flutter/material.dart';
import 'package:roshetty/ui/shared/colors.dart';

import 'shared/container_in_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool selectHome = true;
  bool selectBones = false;
  bool selectImmunity = false;
  bool selectEyes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16 , left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildChips('Home' , selectHome),
                    buildChips('Bones' , selectBones),
                    buildChips('Immunity' , selectImmunity),
                    buildChips('Eyes' , selectEyes)
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buildContainer('Home Visit' , 'Choose a specialty and the doctor will come home.' , 'Book a home visit' , 'assets/images/first_aid_kit.png'),
              buildContainer('First aids' , 'Learn the principles of first aid, and ways to prevent diseases.' , 'Browes videos' , 'assets/images/first_aid_kit_amico.png'),

            ],
          ),
        ),
      ),
    );
  }


  Widget buildChips(String text , bool selectedChips ){
    return Container(
      height: 38,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.5),
          color: selectedChips ? tealColor1B: whiteColorFF),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3),
        child: ChoiceChip(
          label: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4 , vertical: 2),
            child: Text(text , style: TextStyle(
                color: selectedChips? tealColor1B : black50Color00,
                fontSize: 16, fontWeight: selectedChips? FontWeight.w500 : FontWeight.w400
            ),),
          ),
          selected: selectedChips,
          onSelected: (value){
            setState(() {
              selectedChips = value;
            });
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4)
          ),
          selectedColor: whiteColorFF,
        ),
      ),
    );
  }
}
