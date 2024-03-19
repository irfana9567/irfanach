import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          bottom: TabBar(
              indicatorColor: Colors.white,
              tabs:[
                Tab(
                  text:"Chats" ,
                ),
                Tab(
                  text:"Updates" ,
                ),
                Tab(
                  text:"Calls" ,
                ),
              ] ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                  children: [
                    Container(
                      color: Colors.lightGreen,
                    ),
                    Container(
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.pinkAccent,
                    ),
                  ]
              ),
            )
          ],
        ),

      ),
    );
  }
}
