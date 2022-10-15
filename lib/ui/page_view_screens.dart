import 'dart:async';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:roshetty/ui/shared/colors.dart';
import 'package:roshetty/ui/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/models/page_view_data.dart';


class IntroToTheApplication extends StatefulWidget {
  const IntroToTheApplication({Key? key}) : super(key: key);

  @override
  State<IntroToTheApplication> createState() => _IntroToTheApplicationState();
}

class _IntroToTheApplicationState extends State<IntroToTheApplication> {

  int _currentIndex = 0;
  final PageController _pageController = PageController(

  );
  final List<PageViewData> _pageViewData = [
    PageViewData(
      imageUrl: 'assets/images/page_view_1.png',
      description: 'Roshetty is an online healthcare system that allows  patients to communicate with many doctors using either chat or video call.'
    ),
    PageViewData(
      imageUrl: 'assets/images/page_view_2.png',
      description: 'You can either book an online or offline appointment, you can also pay the way that suits you the best.',
    ),
    PageViewData(
      imageUrl: 'assets/images/page_view_3.png',
      description: 'You will have your own medical prescription saved in your profile, get doctor recommendations and many more!',
    ),
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3) , (timer) {
      if(_currentIndex < 2) _currentIndex++;
      _pageController.animateToPage(_currentIndex , duration: Duration(milliseconds: 600) , curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: tealColorD6,
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: _pageViewData.map( (item) {
                return Column(
                  children: [
                    Container(
                      color: tealColorD6.withAlpha(50),
                      width: double.infinity,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image.asset('assets/images/back_background.png',),
                          Image.asset(item.imageUrl),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0 , vertical: 20),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 250,
                        decoration: BoxDecoration(
                          color: whiteColorFF.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: greyColorD9.withOpacity(0.6),
                              blurRadius: 6,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            buildDescriptionInPageView(item.description),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
              onPageChanged: (value){
                setState(() {
                  _currentIndex = value;
                  if(_currentIndex == 2) {
                    Future.delayed(Duration(seconds: 4) , (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    });
                  }
                });
              },
            ),
            if(_currentIndex == 2)
            buildButton(),
            Align(
              alignment: Alignment(0 , 0.9),
              child: PageViewDotIndicator(
                currentItem: _currentIndex,
                count: _pageViewData.length,
                unselectedColor: greyColorD9,
                selectedColor: tealColor1B,
                size: const Size(12, 12),
                unselectedSize: const Size(8, 8),
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.zero,
                fadeEdges: false,
              ),),
          ],

        )
      ),
    );
  }

  Widget buildDescriptionInPageView(String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25 , horizontal: 15),
      child: Text(description , style: TextStyle(
          color: greyColor58 ,
          fontSize: 16,
          fontWeight: FontWeight.w400
        ),
      ),
    );
  }

  Widget buildButton() {
    return Align(
      alignment: const Alignment(0 , 0.65),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: MaterialButton(
          height: 50,
          minWidth: double.infinity,
          color: tealColor1B,
          onPressed: (){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => WelcomeScreen()));
          },
          child: Text(
            'Get started',
            style: TextStyle(
                color: whiteColorFF,
                fontSize: 18,
                fontWeight: FontWeight.w400
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35)
          ),
        ),
      ),
    );
  }

}
