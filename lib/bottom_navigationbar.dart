import 'package:flutter/material.dart';
import 'package:irfanach/page_1.dart';
import 'package:irfanach/page_2.dart';
import 'package:irfanach/page_3.dart';
import 'package:irfanach/widget_page.dart';

class bottomNavigationbar extends StatefulWidget {
  const bottomNavigationbar({super.key});

  @override
  State<bottomNavigationbar> createState() => _bottomNavigationbarState();
}

class _bottomNavigationbarState extends State<bottomNavigationbar> {
  int selectIndex=0;
  List pages=[
    page1(),
    page2(),
    page3(),
    widgetPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showSelectedLabels:true,
        showUnselectedLabels: true,
        currentIndex:selectIndex ,
        onTap: (value) {
          selectIndex=value;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.favorite),
              label: "Like"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.card_travel_outlined),
              label: "Cart"
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: "Account"
          ),
        ],

      ),
    );
  }
}
