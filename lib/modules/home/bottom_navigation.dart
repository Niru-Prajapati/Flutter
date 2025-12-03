import 'package:flutter/material.dart';

import 'dashboard_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int indexs=0;
  final screens=[
    DashboardView(),
    DashboardView(),
    DashboardView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[indexs],
      bottomNavigationBar: Theme(
        data: Theme.of(context,
        ).copyWith(
            primaryColor: Colors.white,canvasColor:Colors.white),
        child: BottomNavigationBar(
          currentIndex: indexs,
          onTap: (value) {
            setState(() {
              indexs=value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Colors.red,
          ),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label:'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

          ],

        ),
      ),


    );
  }
}
