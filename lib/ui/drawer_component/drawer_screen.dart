import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roshetty/ui/drawer_component/drawer_header.dart';
import 'package:roshetty/ui/edit_profile.dart';
import 'package:roshetty/ui/shared/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roshetty/ui/shared/container_in_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var currentPage = DrawerSections.profile;
  bool selectHome = true;
  bool selectBones = false;
  bool selectImmunity = false;
  bool selectEyes = false;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var container ;
    if(currentPage == DrawerSections.home){
      container = HomeScreen();
    }else if(currentPage == DrawerSections.profile){
      container = EditProfile();
    }


    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColorFF,
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png'),
          centerTitle: true,
          backgroundColor: tealColor1B.withOpacity(0.8),
          elevation: 0,
          // backgroundColor: whiteColorFF,
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  const MyDrawerHeader(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
        body: container,
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
      ),
    );
  }


  Widget MyDrawerList(){

    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItems(0 , 'Home' , Icon(Icons.home_outlined , color: tealColor1B,) , currentPage == DrawerSections.home? true : false ),
          menuItems(1 , 'Profile' , SvgPicture.asset('assets/svgs/person_fill.svg') , currentPage == DrawerSections.profile? true : false ),
          menuItems(2 , 'Language' , SvgPicture.asset('assets/svgs/globe.svg') , currentPage == DrawerSections.language? true : false),
          menuItems(3 , 'Payment' , SvgPicture.asset('assets/svgs/credit_card_2_front_fill.svg') , currentPage == DrawerSections.payment? true : false),
          menuItems(4 , 'Emergency Contacts' , SvgPicture.asset('assets/svgs/telephone_fill.svg') , currentPage == DrawerSections.emergencyContacts? true : false),
          menuItems(5 , 'Prescriptions' , SvgPicture.asset('assets/svgs/prescription.svg') , currentPage == DrawerSections.prescriptions? true : false),
          menuItems(6 , 'Symptoms' , SvgPicture.asset('assets/svgs/capsule-pill.svg') , currentPage == DrawerSections.symptoms? true : false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              color: black10Color00,
              height: 1, width: double.infinity,
            ),
          ),
          menuItems(7 , 'Log out' , SvgPicture.asset('assets/svgs/box_arrow_right.svg') , currentPage == DrawerSections.logOut? true : false),
        ],
      ),
    );
  }

  Widget menuItems(int id , String title , Widget icon , bool selected){
    return Material(
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id == 1){
              currentPage = DrawerSections.profile;
            }else if(id == 2) {
              currentPage = DrawerSections.language;
            }else if(id == 3) {
              currentPage = DrawerSections.payment;
            }else if(id == 4) {
              currentPage = DrawerSections.emergencyContacts;
            }else if(id == 5) {
              currentPage = DrawerSections.prescriptions;
            }else if(id == 6) {
              currentPage = DrawerSections.symptoms;
            }else if(id == 7) {
              currentPage = DrawerSections.logOut;
            }else if(id == 0) {
              currentPage = DrawerSections.home;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: icon,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(
                      color: blackColor00,
                      fontSize: 16
                  ),
                ),
              ),
              Expanded(
                child: Icon(Icons.arrow_forward_ios , size: 15,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




enum DrawerSections {
  home,
  profile,
  language,
  payment,
  emergencyContacts,
  prescriptions,
  symptoms,
  logOut,
}
