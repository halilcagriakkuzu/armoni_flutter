import 'package:akorcum/screens/home_screen.dart';
import 'package:akorcum/screens/user_favorite.dart';
import 'package:akorcum/screens/user_profile.dart';
import 'package:akorcum/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  List<Widget> pages = [
    HomeScreen(),
    UserProfile(),
    UserFavorites(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          body: TabBarView(
            children: pages,
          ),
          bottomNavigationBar: TabBar(
              labelColor: Colors.orange,
              indicatorColor: Colors.orange,
              unselectedLabelColor: kPrimaryColor,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Ana sayfa",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Hesabım",
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: "Favoriler",
                ),
              ]),
        ));
  }
}
