import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:irfanach/color_box.dart';
import 'package:irfanach/home_page.dart';
import 'package:irfanach/search_page.dart';
import 'package:irfanach/second_page.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  int selectedIndex=0;
  List<Widget> pages=[
    colorBox(),
   secondPage(),
    searchPage(),
  ];
  void onItemTaped(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.accessibility),),
        title: Center(child: Text("FLIT")),
        actions: [
         IconButton(onPressed:(){}, icon:  Icon(Icons.add_box_outlined))
        ],
      ),
       body: pages[selectedIndex],
       floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.indigo,
            child:  Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.red,
            child:  Icon(Icons.add),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "settings"),
            BottomNavigationBarItem(icon: Icon(Icons.search),
                label: "search"),
          ],
        onTap:onItemTaped ,
        currentIndex: selectedIndex,
      ),
    );
  }
}
