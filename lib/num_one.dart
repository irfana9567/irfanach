import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class numOne extends StatefulWidget {
  const numOne({super.key,required this.name,required this.price,required this.quantity});
  final String name;
  final String price;
  final String quantity;

  @override
  State<numOne> createState() => _numOneState();
}

class _numOneState extends State<numOne> {
  List a=[];

  List items=[
    {
      "image":"assets/images/apple.png",
      "item":"Apple",
      "price":150,
      "quantity":0,
    },
    {
      "image":"assets/images/pineapple.png",
      "item":"Pineapple",
      "price":20,
      "quantity":0
    },
    {
      "image":"assets/images/grape.png",
      "item":"Grape",
      "price":30,
      "quantity":0
    },
    {
      "image":"assets/images/orange.png",
      "item":"Orange",
      "price":40,
      "quantity":0
    },
  ];



  int total=0;
  totaladd(){
    total=0;
    for(int i=0;i<items.length;i++){
      total=items[i]['price']*items[i]["quantity"]+total;

    }
    setState(() {

    });

  }

  void initState() {


    // TODO: implement initState
    totaladd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Total:${total}",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: width*0.09
            ),)
        ],
      ),
      appBar: AppBar(

      ),
      body: Column(
          children: [
            Container(
              height: width*1.55,
              width: width*1,
              color: Colors.white,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    height: width*0.27,
                    width: width*0.2,
                    margin: EdgeInsets.all( width*0.03),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(width*0.03),
                        boxShadow: [
                          BoxShadow( color: Colors.black.withOpacity(0.15),
                              blurRadius: 4,
                              spreadRadius: 2,
                              offset: Offset(0, 4))
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: width * 0.35,
                          width: width* 0.35,
                          // color: Colors.yellow,
                          child: Image.asset(
                            items![index]["image"],
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: width*0.02,),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text( widget.name,
                              style: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),),
                            Text(widget.price,
                              style: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),),
                            Text(widget.quantity,
                              style: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),),
                          ],
                        ),

                        items[index]["quantity"]!=0?
                        Container(
                          height: width * 0.13,
                          width: width* 0.23,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(
                                  width * 0.03),
                              color: Colors.black12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  items[index]["quantity"]++;
                                  totaladd();
                                  setState(() {

                                  });
                                },
                                child: Container(
                                    height: width*0.05,
                                    width: width*0.05,
                                    color: Colors.white,
                                    child: Icon(CupertinoIcons.plus,size: width*0.04,)),
                              ),
                              SizedBox(width: width*0.02,),
                              Text(items[index]["quantity"].toString(),
                                style: TextStyle(color: Colors.black),),
                              SizedBox(width: width*0.02,),
                              InkWell(
                                onTap: () {
                                  items[index]["quantity"]--;
                                  totaladd();
                                  setState(() {

                                  });
                                },
                                child: Container(
                                    height: width*0.05,
                                    width: width*0.05,
                                    color: Colors.white,
                                    child: Icon(CupertinoIcons.minus,size: width*0.04,)),
                              ),
                            ],
                          ),
                        ):InkWell(
                          onTap: () {
                            items[index]["quantity"]++;
                            totaladd();
                            setState(() {

                            });
                          },
                          child: Container(
                            height: width*0.13,
                            width: width*0.23,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(width*0.03)
                            ),
                            child: Center(child: Text("add",
                              style: TextStyle(
                                  color: Colors.black
                              ),),),
                          ),
                        )
                      ],
                    ),
                  );
                },


              ),
            )
          ],
      ),

    );
  }
}
