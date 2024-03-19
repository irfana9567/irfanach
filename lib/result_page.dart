import 'package:flutter/material.dart';
import 'package:irfanach/main.dart';

class dataPass extends StatefulWidget {
  const dataPass({super.key, required this.name, required this.phone, required this.email, required this.password, required this.address});
final String name;
final String phone;
final String email;
final String password;
final String address;
  @override
  State<dataPass> createState() => _dataPassState();
}

class _dataPassState extends State<dataPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DATA PASS"),
      ),
      body: Container(
        height: height*0.9,
        width: width*1,
        margin: EdgeInsets.all(width*0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Name:${widget.name}"),
            Text("Phone:${widget.phone}"),
            Text("Email:${widget.email}"),
            Text("Password:${widget.password}"),
            Text("Address:${widget.address}"),
          ],
        ),
      ),
    );
  }
}
