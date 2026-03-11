import 'package:figma_to_flutter_2/Chef%20interfaces/add_New_Items.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/my_Food.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/notifications.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/profile.dart';
import 'package:figma_to_flutter_2/Chef%20interfaces/seller_Dashboard_Home.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const seller_Dash_Home(),
    const my_Food(),
    const add_New_Items(),
    const notifications(),
    const profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: Container(
        height: 89,
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              spreadRadius: 1,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            // Home
            IconButton(
              icon: Icon(
                Icons.grid_view_rounded,
                color: _currentIndex == 0 ? Colors.orange : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),

            // My Food
            IconButton(
              icon: Icon(
                Icons.menu,
                color: _currentIndex == 1 ? Colors.orange : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),

            /// Center Button (Add Items)
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 2),
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(Icons.add, color: Colors.orange),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const add_New_Items()),
                  );
                },
              ),
            ),

            // Notifications
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: _currentIndex == 3 ? Colors.orange : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),

            // Profile
            IconButton(
              icon: Icon(
                Icons.person_outline,
                color: _currentIndex == 4 ? Colors.orange : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}