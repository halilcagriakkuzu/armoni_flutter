import 'package:akorcum/screens/home_screen.dart';
import 'package:akorcum/screens/user_favorite.dart';
import 'package:akorcum/screens/user_profile.dart';
import 'package:flutter/material.dart';

class MyBottamNavigationBar extends StatefulWidget {
  const MyBottamNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottamNavigationBarState createState() => _MyBottamNavigationBarState();
}

class _MyBottamNavigationBarState extends State<MyBottamNavigationBar> {


  int _currentIndex=0;

  final List<Widget> _children=[

    HomeScreen(),
    UserProfile(),
    UserFavorites(),
  ];

void onTappedBar(int index){
  setState(() {
    _currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Ana sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Hesabım",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favoriler",
          ),
        ],
        selectedItemColor: Colors.orange,
      ),
    );
  }
}
