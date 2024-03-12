import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatefulWidget {
  final ValueChanged<int>? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GNav(
          color: Color(0xff1F8B7A),
          activeColor: Color(0xff1F8B7A),
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Color(0xffFFB72B),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 25,
          selectedIndex: _selectedIndex,
          onTabChange: (value) {
            setState(() {
              _selectedIndex = value;
            });
            if (widget.onTabChange != null) {
              widget.onTabChange!(value);
            }
          },
          tabs: const [
            GButton(
              icon: Icons.home,
              text: " Home",
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff1F8B7A),
              ),
            ),
            GButton(
              icon: Icons.chat,
              text: " Chat",
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff1F8B7A),
              ),
            ),
            GButton(
                icon: Icons.notifications_active,
                text: " Notifications",
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1F8B7A),
                )),
            GButton(
              icon: Icons.person,
              text: " Profile",
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff1F8B7A),
              ),
            ),
          ]),
    );
  }
}
