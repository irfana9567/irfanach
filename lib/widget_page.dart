import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'main.dart';

class widgetPage extends StatefulWidget {
  const widgetPage({super.key});

  @override
  State<widgetPage> createState() => _widgetPageState();
}

class _widgetPageState extends State<widgetPage> {
  // bool gender=true;
  int currentIndex=0;
  bool check1=false;
  bool check2=true;
  String gender="f";
  bool select1=true;
  bool select2=false;
  bool select3=true;
  bool select4=false;
  bool clear=false;
  int count=0;
  bool toggle=false;

  List<String> images=
  [
    "images/abc.png",
    "images/hst2.png",
    "images/hst4.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle:true,
        title: Text("WIDGET PAGE",
            style:GoogleFonts.poppins(
              fontSize: width*0.07,
            )
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return[
              PopupMenuItem(
                  child: Row(
                    children: [
                    Icon(Icons.person,color: Colors.black,),
                    SizedBox(width:width*0.03),
                    Text("Profile"),
                    ],
                  )
              ),
              PopupMenuItem(
                  child: Row(
                    children: [
                    Icon(Icons.info,color: Colors.black,),
                    SizedBox(width:width*0.03),
                    Text("Info"),
                    ],
                  )
              ) ,
              PopupMenuItem(
                  child: Row(
                    children: [
                    Icon(Icons.settings, color: Colors.black,),
                    SizedBox(width:width*0.03),
                    Text("Settings"),
                    ],
                  )
              ),
              PopupMenuItem(
                  child: Row(
                    children: [
                    Icon(Icons.privacy_tip,color: Colors.black,),
                    SizedBox(width:width*0.03),
                    Text("Privacy"),
                    ],
                  )
              ),
              PopupMenuItem(
                  child: Row(
                    children: [
                    Icon(Icons.help,color: Colors.black,),
                    SizedBox(width:width*0.03),
                    Text("Help"),
                    ],
                  )
              ),
            ];
          },)
        ],
      ),
      drawer: Drawer(

      ),
      floatingActionButton:FloatingActionButton(
          onPressed: () {

          },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: images.length,
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                 currentIndex=index;
                });
              },
            ),
                itemBuilder: (context, index, realIndex) {
                  return  Container(
                      height: width*0.6,
                      width:width*1 ,
                      margin: EdgeInsets.only(right: width*0.03,),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width*0.03)
                      ),
                      child: Image.asset(images[index],fit: BoxFit.fill,)
                  );
                },

            ),
             SizedBox(height: width*0.03,),
          AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: images.length,
          effect: ExpandingDotsEffect(
            dotColor: Colors.black,
            activeDotColor: Colors.red,
            dotHeight:width*0.02,
            dotWidth: width*0.02
          ),),
            SizedBox(height: width*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RadioMenuButton(
                  value: "m",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });
                  },
                  child: Text("Male")
              ),
              RadioMenuButton(
                  value:"",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });
                  },
                  child: Text("female")
              ),
              RadioMenuButton(
                  value:"o",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });
                  },
                  child: Text("other")
              ),
            ],
          ),
           SizedBox(height: width*0.03,) ,
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CheckboxMenuButton(
                value: check1,
                onChanged: (value) {
                  setState(() {
                    check1=value!;
                  });
                },
                child: Text("Abc")
            ),
            CheckboxMenuButton(
                value: check2,
                onChanged: (value) {
                  setState(() {
                    check2=value!;
                  });
                },
                child: Text("Pqr")
            ),
          ],
          ),
          SizedBox(height: width*0.03,)  ,
         clear==true?SizedBox(height: width*0.03,): Row  (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // select=!select
                  select1=true;
                  select2=false;
                  select3=false;
                  select4=false;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.08,
                  width: width*0.2,
                  child: Center(child: Text("A",
                    style: TextStyle(
                        color:select1==true? Colors.white:Colors.black
                    ),)),
                  decoration: BoxDecoration(
                    color: select1==true?Colors.green:Colors.grey[400],
                    borderRadius: BorderRadius.circular(width*0.02)
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  select2=true;
                  select1=false;
                  select3=false;
                  select4=false;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.08,
                  width: width*0.2,
                  child: Center(child: Text("B",
                    style: TextStyle(
                        color:select2==true? Colors.white:Colors.black
                    ),)),
                  decoration: BoxDecoration(
                      color: select2==true?Colors.green:Colors.grey[400],
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  select1=false;
                  select2=false;
                  select3=true;
                  select4=false;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.08,
                  width: width*0.2,
                  child: Center(child: Text("C",
                    style: TextStyle(
                        color:select3==true? Colors.white:Colors.black
                    ),)),
                  decoration: BoxDecoration(
                      color: select3==true?Colors.green:Colors.grey[400],
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  select4=true;
                  select1=false;
                  select2=false;
                  select3=false;
                  setState(() {

                  });
                },
                child: Container(
                  height: width*0.08,
                  width: width*0.2,
                  child: Center(child: Text("D",
                    style: TextStyle(
                        color:select4==true? Colors.white:Colors.black
                    ),)),
                  decoration: BoxDecoration(
                      color: select4==true?Colors.green:Colors.grey[400],
                      borderRadius: BorderRadius.circular(width*0.02)
                  ),
                ),
              ),

            ],
          ),
            SizedBox(height: width*0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap:() {
                    // clear=!clear;
                    clear=true;

                    setState(() {

                    });
                    },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("Clear",
                      style: TextStyle(
                          color: Colors.white,
                      ),)),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(width*0.02)
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    clear=false;
                   //  clear=!true;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width*0.08,
                    width: width*0.2,
                    child: Center(child: Text("Get",
                      style: TextStyle(
                          color:Colors.white
                      ),)),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(width*0.02)
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: width*0.03),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               InkWell(
                 onTap: () {
                   count++;
                  setState(() {

                  });
                 },
                 child: CircleAvatar(
                   backgroundColor: Colors.black,
                   child: Icon(Icons.add)
                 ),
               ),
               Text(count.toString(),
               style: TextStyle(
                 fontSize: width*0.06,
               ),),
               InkWell(
                 onTap: () {
                  count<=0? 0:count--;
                  setState(() {

                  });
                 },
                 child: CircleAvatar(
                   backgroundColor: Colors.black,
                   child: Icon(Icons.remove)
               ),
               )
             ],

            ),
            SizedBox(height: width*0.03),
            Divider(
              color: Colors.black,
              thickness: width*0.01,
              indent: width*0.1,
              endIndent: width*0.1,
            ),
            SizedBox(height: width*0.03),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Irfana")));
                  },
                  child: Container(
                    width: width*0.2,
                    height: width*0.08,
                     child: Center(child: Text("Snack Bar")),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(width*0.03)
                    ),
                  ),
                ),
                CircularProgressIndicator(
                  color: Colors.purple,
                  backgroundColor: Colors.yellow,
                  strokeWidth: width*0.01,
                ),
                Stack(
                    children:[
                  InkWell(
                    onTap: () {
                      toggle=!toggle;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: width*0.2,
                      height: width*0.08,
                      decoration: BoxDecoration(
                          color: toggle?Colors.green:Colors.grey[400],
                          borderRadius: BorderRadius.circular(width*0.04)
                      ),
                    ),
                  ),
                      AnimatedPositioned(
                        duration: Duration(
                            milliseconds: 200) ,
                        left:toggle? width*0.12 :width*0.01,
                        right:toggle? width*0.01:width*0.12,
                        child: InkWell(
                          onTap: () {
                            toggle=!toggle;
                            setState(() {

                            });
                          },
                          child: AnimatedContainer(duration: Duration(
                              milliseconds: 200
                          ),
                            curve: Curves.easeIn,
                            height: width*0.08,
                            width: width*0.08,
                            decoration:BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            )
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration:Duration(
                          milliseconds: 200
                        ) ,
                        top: width*0.02,
                        right: toggle? width*0.08:width*0.01,
                        left: toggle? width*0.03:width*0.1,
                        child: Text(toggle?"ON":"OFF",
                          style: TextStyle(
                            color: toggle? Colors.white:Colors.black,
                          ),
                        ),
                      )
                    ]
                ),

              ],
            ),
            SizedBox(height: width*0.03,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Are you sure want to exit?"),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: width*0.2,
                              height: width*0.08,
                              child: Center(child: Text("Yes")),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(width*0.02)
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: width*0.2,
                                height: width*0.08,
                                child: Center(child: Text("No")),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(width*0.02)
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                );
              },
              child: Container(
                width: width*0.2,
                height: width*0.08,
                child: Center(child: Text("Alert Box")),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(width*0.02)
                ),
              ),
            ),
            InkWell(
              onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(width*0.06),
                    topRight: Radius.circular(width*0.06),
                  )
                ),

                  context: context,
                  builder: (context) {
                    return Container();
                  },
              );
              },
              child: Container(
                width: width*0.2,
                height: width*0.08,
                child: Center(child: Text("BTM Sheet")),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(width*0.02)
                ),
              ),
            ),
          ],
        )


          ],
        ),
      ),
    );
  }
}
