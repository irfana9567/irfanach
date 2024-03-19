import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Home Page")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height:width*0.55,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width*0.03

                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 4,
                        spreadRadius: 2,
                        offset: Offset(0, 4))
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: width*0.30,
                          width: width*0.30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(width*0.03)),
                          child: Image.asset("images/abc.png")),
                      Text("Text 1"),
                      Text("Text 2"),
                    ],
                  ),
                  Container(
                    height:width*0.30,
                    width: width*0.30,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     border: Border.all(
                       color: Colors.black
                     )
                   ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.account_circle_outlined),
                            Text("text 3"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.account_circle_outlined),
                            Text("text 4"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Text",
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(
                      width: 10,
                    ),
                    Text("P"),
                  ],
                ),
                Icon(Icons.account_balance_sharp)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: width*0.03,),
                    Text("Q"),
                  ],
                ),
                Icon(Icons.account_balance_sharp)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width:width*0.03,),
                    Text("R"),
                  ],
                ),
                Icon(Icons.account_balance_sharp)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: width*0.03,),
                    Text("S"),
                  ],
                ),
                Icon(Icons.account_balance_sharp)
              ],
            ),
            Container(
              height: width*0.55,
              width: width*1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(width*0.03),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: width*0.15,
                    backgroundImage:NetworkImage("https://clipground.com/images/red-maple-leaf-clip-art-8.png"),
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("X"),
                      Text("Y"),
                      Text("Z"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: width*0.25,
                            width: width*0.25,
                            child: Image.asset("images/img.png"),
                          ),
                          SizedBox(height:width*0.03),
                          Container(
                            height: width*0.25,
                            width: width*0.25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                color: Colors.black
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.account_circle_rounded),
                                    Icon(Icons.account_circle_rounded),
                                    Icon(Icons.account_circle_rounded),
                                  ],
                                ),
                                Text("FLIT"),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
