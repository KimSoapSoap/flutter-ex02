import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterex02carrot/screens/chatting/chatting_screen.dart';
import 'package:flutterex02carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutterex02carrot/screens/near_me/near_me_screen.dart';
import 'package:flutterex02carrot/screens/neighborhood_life/neighborhood_life_Screen.dart';

import 'home/home_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: '홈',
              icon: Icon(
                CupertinoIcons.home,
              )),
          BottomNavigationBarItem(
            label: '동네생활',
            icon: Icon(CupertinoIcons.square_on_square),
          ),
          BottomNavigationBarItem(
            label: '내 근처',
            icon: Icon(CupertinoIcons.placemark),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(CupertinoIcons.chat_bubble_2),
          ),
          BottomNavigationBarItem(
            label: '나의 당근',
            icon: Icon(CupertinoIcons.person),
          )
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
