import 'package:flutter/material.dart';
import 'package:flutter_yoga_uygulamasi/constants/constants.dart';
import 'package:flutter_yoga_uygulamasi/screens/home/custom_appbar.dart';
import 'package:flutter_yoga_uygulamasi/screens/home/list_courses.dart';
import 'package:flutter_yoga_uygulamasi/screens/login/home/diff_styles.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIconIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(top: appPadding * 2),
        child: Column(
          children: const [
            CustomAppBar(),
            DiffStyles(),
            ListCourses(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: primary,
        height: 60,
        color: white,
        onTap: (index) {
          setState(() {
            selectedIconIndex = index;
          });
        },
        animationDuration: Duration(milliseconds: 200),
        items: [
          Icon(
            Icons.play_arrow_outlined,
            size: 30,
            color: selectedIconIndex == 0 ? white : black,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: selectedIconIndex == 1 ? white : black,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
            color: selectedIconIndex == 2 ? white : black,
          ),
          Icon(
            Icons.favorite_outline_outlined,
            size: 30,
            color: selectedIconIndex == 3 ? white : black,
          ),
          Icon(
            Icons.person_outline,
            size: 30,
            color: selectedIconIndex == 4 ? white : black,
          ),
        ],
      ),
    );
  }
}
