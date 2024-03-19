import 'package:flutter/material.dart';

class colorBox extends StatefulWidget {
  const colorBox({super.key});

  @override
  State<colorBox> createState() => _colorBoxState();
}

class _colorBoxState extends State<colorBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("ColorBox")),
        ),
        body:Column(
          children: [
            Row(
              children: [
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.red,
                ),
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.green,
                ),
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.yellow,
                ),
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.blue,
                ),
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.green,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.yellow,
                ),
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.yellow,
                ),
                Container(
                  height: 215,
                  width: 120,
                  color: Colors.purple,
                ),
              ],
            )
          ],
        )

    );
  }
}
