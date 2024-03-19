import 'package:flutter/material.dart';
import 'package:irfanach/list_view.dart';

import 'main.dart';

class listGrid extends StatefulWidget {
  const listGrid({super.key});

  @override
  State<listGrid> createState() => _listGridState();
}

class _listGridState extends State<listGrid> {
  // List images=[
  //   "images/bird1.png",
  //   "images/bird2.png",
  //   "images/bird3.png",
  //   "images/bird4.png",
  // ];
  List listView=[
    {
      "image":"images/bird4.png",
      "text1":"T",
      "text2":"t"
    },
    {
      "image":"images/bird1.png",
      "text1":"A",
      "text2":"a"
    },
    {
      "image":"images/bird2.png",
      "text1":"B",
      "text2":"b"
    },
    {
      "image":"images/bird3.png",
      "text1":"C",
      "text2":"c"
    }

  ];
  List gridView=[
    {
      "image":"images/hst1.png",
      "text":"A",
      "icon":Icons.account_circle_sharp
    },
    {
      "image":"images/hst2.png",
      "text":"B",
      "icon":Icons.account_balance_sharp
    },
    {
      "image":"images/hst3.png",
      "text":"C",
      "icon":Icons.ac_unit
    },
    {
      "image":"images/hst4.png",
      "text":"D",
      "icon":Icons.access_alarm
    },
    {
      "image":"images/hst5.png",
      "text":"E",
      "icon":Icons.account_circle_outlined
    },
    {
      "image":"images/hst6.png",
      "text":"F",
      "icon":Icons.add_circle
    },
    {
      "image":"images/hst7.png",
      "text":"G",
      "icon":Icons.access_time_filled
    },
    {
      "image":"images/hst8.png",
      "text":"H",
      "icon":Icons.accessibility
    },
    {
      "image":"images/hst9.png",
      "text":"I",
      "icon":Icons.add_a_photo
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("LIST AND GRID")),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Text("List View",
              style: TextStyle(fontSize: 20),
            ),
              Container(
                height: width*0.3,
                width: width*1,
                child: ListView.builder(
                  itemCount: listView.length,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: width*0.25,
                      width: width*0.25,
                     margin:EdgeInsets.all(width*0.02),
                     child: Column(
                       children: [

                         Container(
                           height: width*0.15,
                           width:  width*0.15,
                           decoration: BoxDecoration(
                              color: Colors.black,
                             borderRadius: BorderRadius.circular( width*0.03),
                             image:DecorationImage(image: AssetImage(listView[index]["image"]),fit:BoxFit.fill)
                           ),
                         ),
                         Text(listView[index]["text1"]),
                         Text(listView[index]["text2"])
                       ],
                     ),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(width*0.03),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black.withOpacity(0.15),
                           blurRadius: 4,
                           spreadRadius: 2,
                           offset: Offset(0, 4),
                         )
                       ]
                     ),
                    );
                  },

                ),
               
              ),
            SizedBox(height: width*0.03,),
            Text("Grid View",
            style: TextStyle(fontSize: 20),),
            SizedBox(height: width*0.03,),
            Expanded(
              child: GridView.builder(
                itemCount: gridView.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: width*0.03,
                    crossAxisSpacing:width*0.03,
                    childAspectRatio: 1
                ),
                itemBuilder: (BuildContext context, int index) {
                 return Container(
                    height: width*0.25,
                    width: width*0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width*0.15,
                          width:  width*0.15,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular( width*0.03),
                              image:DecorationImage(image: AssetImage(gridView[index]["image"]))
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(gridView[index]["icon"]),
                            SizedBox(width: width*0.03,),
                            Text(gridView[index]["text"])
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(width*0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          )
                        ]
                    ),
                  );
                },

              ),
            )
            
          ],
        ),
      ),
    );
  }
}
