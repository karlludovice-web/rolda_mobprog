import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rolda_mobprog/constants.dart';
import 'package:rolda_mobprog/screens/newsfeed_screen.dart';
import 'package:rolda_mobprog/screens/notification_screen.dart';
import 'package:rolda_mobprog/screens/profile_screen.dart';
import 'package:rolda_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fbSurface,
      appBar: AppBar(
        backgroundColor: fbPrimary,
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: switch (_selectedIndex) {
            1 => 'Notifications',
            2 => 'Profile',
            _ => 'Pesbok',
          },
          fontSize: ScreenUtil().setSp(25),
          color: Colors.white,
          fontFamily: 'Klavika',
          fontWeight: FontWeight(700),
        ), // CustomText
      ), // AppBar
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ), // PageView
bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: fbGoldText,
        currentIndex: _selectedIndex,
      ), // BottomNavigationBar
    ); // Scaffold
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
