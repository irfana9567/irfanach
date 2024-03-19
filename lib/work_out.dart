import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:irfanach/tab_bar.dart';

import 'main.dart';

class workOut extends StatefulWidget {
  const workOut({super.key});

  @override
  State<workOut> createState() => _workOutState();
}

class _workOutState extends State<workOut> {
  String? valueChoose;
  var listItem=[
    "item1",
    "item2",
    "item3",
    "item4",
    "item5",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AAAAA"),
        centerTitle: true,
      ),
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
          padding: EdgeInsets.only(left: 16,right: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width:width*0.003),
              borderRadius: BorderRadius.circular(width*0.04)),
            child: DropdownButton(
              hint: Text("Select Items: "),
              dropdownColor: Colors.grey[300],
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36,
              isExpanded: true,
              underline: SizedBox(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22
              ),
              value: valueChoose,

              items:listItem.map((valueItem){
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  valueChoose=newValue;
                });
              },
            ),
          ),
        ),
      ),



    );
  }
}
