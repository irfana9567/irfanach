import 'package:flutter/material.dart';
import 'package:irfanach/page_3.dart';
import 'package:irfanach/widget_page.dart';

import 'main.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widgetPage(),)));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        centerTitle: true,
        title: Text("SPLASH SCREEN"),
      ),
      body: Container(
        height: height*0.9,
        width: width*1,
        margin: EdgeInsets.all(width*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
             Text("WELCOME",
            style: TextStyle(
              fontSize: width*0.06,
              fontWeight: FontWeight.w600,
            ),
             ),
            SizedBox(height: width*0.03,),
            CircularProgressIndicator(
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
