import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'shared/colors.dart';
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
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 64,
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                heightFactor: 0.5,
                child: FloatingActionButton(
                    onPressed: (){},
                    backgroundColor: tealColor1B,
                    child: SvgPicture.asset(
                        'assets/svgs/house_door_fill.svg'
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: (){
                    },
                    icon: SvgPicture.asset(
                        'assets/svgs/capsule.svg'
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                    },
                    icon: SvgPicture.asset(
                        'assets/svgs/qr_code_scan.svg'
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.16,
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon: SvgPicture.asset(
                        'assets/svgs/chat_text.svg'
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset(
                        'assets/svgs/people.svg'
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16 , left: 16, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: tealColor1B,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(
                        onPressed: (){
                        },
                        icon: Icon(Icons.menu , size: 35, color: whiteColorFF),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Image.asset(
                      'assets/images/logo.png'
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: grey05Color,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(Icons.search , color: grey40Color, size: 26,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Search',
                            style: TextStyle(
                                color: grey40Color ,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: selectedChips ? tealColor1B: whiteColorFF),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
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
