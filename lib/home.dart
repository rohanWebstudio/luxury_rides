import 'package:flutter/material.dart';
import 'package:ride/manual.dart';
import 'package:ride/my_booking.dart';
import 'package:ride/performance.dart';
import 'package:ride/profile.dart';

class HomePage
    extends
        StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<
    HomePage
  >
  createState() =>
      _HomePageState();
}

class _HomePageState
    extends
        State<
          HomePage
        > {
  int
  _currentIndex =
      0;

  final List<
    Widget
  >
  _pages = [
    const BookingPage(),
    const ManualPage(),
    const PerformancePage(),
    const ProfilePage(),
  ];

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        onTap:
            (
              index,
            ) {
              setState(
                () {
                  _currentIndex = index;
                },
              );
            },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book_online,
            ),
            label: "My booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
            ),
            label: "Manual",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.speed,
            ),
            label: "Performance",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
