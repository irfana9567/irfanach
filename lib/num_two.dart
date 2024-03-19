import 'package:flutter/material.dart';
import 'package:irfanach/num_one.dart';

import 'main.dart';

class numTwo extends StatefulWidget {
  const numTwo({super.key});

  @override
  State<numTwo> createState() => _numTwoState();
}

class _numTwoState extends State<numTwo> {
  TextEditingController nameController=TextEditingController();
  TextEditingController priceController=TextEditingController();
  TextEditingController quantityController=TextEditingController();

  List x=[];

  final formkey=GlobalKey<FormState>();

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text("Name",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.04),),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width*0.04)),
              ),),
            SizedBox(height: width*0.04,),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: Text("price",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.04),),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width*0.04)),
              ),),
            SizedBox(height: width*0.04,),
            TextFormField(
              controller: quantityController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text('${widget.q}',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width*0.04),),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(width*0.04)),
              ),),
            SizedBox(height: width*0.04,),
            ElevatedButton(
                onPressed: () {
                  if(
                  nameController.text!=""&&
                  priceController.text!=""&&
                  quantityController.text!=""&&
                  formkey.currentState!.validate()) {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => numOne(
                    //   name:nameController.text,
                    //   quantity:quantityController.text,
                    //   price:priceController.text,
                    //     ),));
                  }
                },
                child:Text("Submit")
            )
          ],
        ),
      ),

    );
  }
}
