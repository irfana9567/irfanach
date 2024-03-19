import 'package:flutter/material.dart';

import 'main.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle:true ,
        title: Text("PAGE-4"),

      ),
    );
  }
}
