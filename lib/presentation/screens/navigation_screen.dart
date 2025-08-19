import 'dart:developer';

import 'package:booking_restaurant/presentation/screens/booking_food.dart';
import 'package:booking_restaurant/presentation/screens/home_screen.dart';
import 'package:booking_restaurant/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectectedIndex = 0;

  List<Widget> screens = [HomeScreen(), BookingFood(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            onTap: (value) {
              log(value.toString());
              setState(() {
                selectectedIndex = value;
              });
            },
            selectedItemColor: Color(0xFF53B175),
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: selectectedIndex,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: SvgPicture.asset(
                  "assets/svgs/home.svg",
                  color: selectectedIndex == 0
                      ? Color(0xFF53B175)
                      : Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: "Booking History",
                icon: SvgPicture.asset(
                  "assets/svgs/book.svg",
                  color: selectectedIndex == 1
                      ? Color(0xFF53B175)
                      : Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: SvgPicture.asset(
                  "assets/svgs/profile.svg",
                  color: selectectedIndex == 2
                      ? Color(0xFF53B175)
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
