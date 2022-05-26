import 'package:flutter/material.dart';

import '../page/mainpage.dart';
import '../page/menupage.dart';
import '../page/profilePage.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _index = 0;
  static final List<Widget> _pages = [
    // bisa di ganti widget apapun
    const MainPage(),
    const MenuPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodDel'),
        backgroundColor: const Color(0xff1A3C40),
        actions: [
          InkWell(
            onTap: () {
              // Get.to(cart());
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 15, top: 8, bottom: 8),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(Icons.shopping_cart_rounded,
                        color: Colors.white, size: 25),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_sharp,
              color: Colors.black,
            ),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              color: Colors.black,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: _pages.elementAt(_index),
    );
  }
}
