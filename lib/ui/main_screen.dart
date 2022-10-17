import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:roshetty/ui/chat_screen.dart';
import 'package:roshetty/ui/people_screen.dart';
import 'package:roshetty/ui/scan_qr_code.dart';
import 'package:roshetty/ui/symptoms_screen.dart';
import 'home_screen.dart';
import 'shared/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



  int _selectedPage = 2;
  void _onTapNavigationBottom(int index){
    setState(() {
      _selectedPage = index;
    });

  }
  List<Widget> _pages = [
    SymptomsScreen(),
    ScannerQrCodeScreen(),
    HomeScreen(),
    ChatScreen(),
    PeoplesScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final items = <Widget>[
      SvgPicture.asset(
          'assets/svgs/capsule.svg'
      ),
      SvgPicture.asset(
          'assets/svgs/qr_code_scan.svg'
      ),
      SvgPicture.asset(
          'assets/svgs/house_door_fill.svg'
      ),
      SvgPicture.asset(
          'assets/svgs/chat_text.svg'
      ),
      SvgPicture.asset(
          'assets/svgs/people.svg'
      ),
    ];
    int _page = 0;
    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _selectedPage,
          height: 60.0,
          items: items,
          color: whiteColorFF,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 800),
          onTap: _onTapNavigationBottom,
          letIndexChange: (index) => true,
        ),
        body: _pages[_selectedPage]
      ),
    );
  }

}
