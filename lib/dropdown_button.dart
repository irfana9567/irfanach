import 'package:flutter/material.dart';

import 'main.dart';

class dropdownButton extends StatefulWidget {
  const dropdownButton({super.key});

  @override
  State<dropdownButton> createState() => _dropdownButtonState();
}

class _dropdownButtonState extends State<dropdownButton> {
  String? valueChoose;
  var listItem=[
    "Item1","Item2","Item3","Item4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dropdown Button"),
      ),
      body:
    Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.only(left: 16,right: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width:width* 0.03),
            borderRadius: BorderRadius.circular(15)
          ),
          child: DropdownButton(
            hint: Text("Select Items: "),
            dropdownColor: Colors.grey[300],
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              color: Colors.green,
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
