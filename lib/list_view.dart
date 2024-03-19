import 'package:flutter/material.dart';

import 'main.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.black,

  title: Center(child: Text("LIST VIEW ")),
),
body: Padding(
  padding: EdgeInsets.all(width*0.03),
  child:   Column(
    children: [
      Container(
        height: width*0.25,
        width: width*1,
        color: Colors.pink,
        child: ListView.separated(
          itemCount: 15,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: width*0.25,
              width: width*0.25,
              color: Colors.grey,
              // margin: EdgeInsets.only(bottom: width*0.03),
            );
          }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width:width*0.03,);
        },
        ),
      )

    ],

  ),
),
    );
  }
}
