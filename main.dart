// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:player/Home.dart';
import 'package:player/Profile.dart';
import 'package:player/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color.fromARGB(0, 255, 255, 255)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomTabBar(),
    );
  }
}

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_index],

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (value) {
              setState(() {
                _index = value;
              });
            },
            
            backgroundColor: Color.fromARGB(255, 227, 227, 227),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bx_home_circle),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bx_search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Boxicons.bxs_user),
                label: 'Profile',
              )
            ]));
  }
}
