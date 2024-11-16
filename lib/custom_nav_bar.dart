import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zyo/categories.dart';
import 'package:zyo/homescreen.dart';
import 'package:zyo/new.dart';
import 'package:zyo/settings.dart';
import 'package:zyo/wish_list.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  final screens = [const Homescreen(), const Categories(),const New(),const Wishlist(),const Settings()];
  int curentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: screens[curentindex],
        bottomNavigationBar: CustomNavigationBar(
          onTap: (index) {
            setState(() {
              curentindex=index;
            });
          },
          items: [
            CustomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 7),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(
                Icons.content_paste_search_outlined,
              ),
              title: const Text(
                "Categories",
                style: TextStyle(fontSize: 7),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(
                Icons.fiber_new_outlined,
              ),
              title: const Text(
                "New",
                style: TextStyle(fontSize: 7),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(
                Icons.favorite_border,
              ),
              title: const Text(
                "Wish List",
                style: TextStyle(fontSize: 7),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(
                Icons.settings,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 7),
              ),
            ),
          ],
          currentIndex: curentindex,
          selectedColor: Colors.black,
          iconSize: 30,
        ),
      ),
    );
  }
}
