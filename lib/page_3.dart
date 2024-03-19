import 'package:flutter/material.dart';
import 'package:irfanach/page_4.dart';

import 'main.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle:true ,
        title: Text("PAGE-3"),
        actions: [
          InkWell(
              onTap: () {
               // Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context) =>page4() ,),ModelRoute.WithName("/");
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page4(),), (route) =>true);
              },
              child: Icon(Icons.add)),
          SizedBox(width: width*0.03,)


        ],
      ),
    );
  }
}
