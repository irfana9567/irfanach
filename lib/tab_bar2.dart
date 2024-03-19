import 'package:flutter/material.dart';

import 'main.dart';

class tabBar2 extends StatefulWidget {
  const tabBar2({super.key});

  @override
  State<tabBar2> createState() => _tabBar2State();
}

class _tabBar2State extends State<tabBar2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(" XYZ"),
        ),
        body: Column(
          children: [
            Container(
              height:width*0.12 ,
              width:width*1 ,
              margin: EdgeInsets.all(width*0.02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*0.02),
                    color: Colors.grey[300]
              ),
              child: TabBar(
                labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(width*0.02)
                  ),
                  tabs:[
                    Tab(
                      text: "A",
                    ),
                    Tab(
                      text: "B",
                    ),
                    Tab(
                      text: "C",
                    ),
                  ]
              ),
            ),
            Expanded(
              child: TabBarView(
                  children:[
                    Container(
                      color: Colors.grey,
                    ),
                    Container(
                      color: Colors.lightGreen,
                    ),
                    Container(
                      color: Colors.teal,
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
