import 'package:flutter/material.dart';

import 'first_home.dart';
import 'first_page.dart';

class irfana extends StatefulWidget {
  const irfana({super.key});

  @override
  State<irfana> createState() => _irfanaState();
}

class _irfanaState extends State<irfana> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.green,
         drawer: Drawer(
           child: ListView(
             children: const [
               DrawerHeader(child: Text("Drawer Header"),
                 decoration: BoxDecoration(
                   color: Colors.green
                 ),
               ),
               ListTile(
                 leading: Icon(Icons.settings,
                   color: Colors.black,
                   size: 30,),
                 title: Text("Settings",
                 style: TextStyle(
                   fontSize: 30,
                 ),),
               ),


               ListTile(
                 leading: Icon(Icons.settings,
                   color: Colors.black,
                   size: 30,),
                 title: Text("Settings",
                   style: TextStyle(
                     fontSize: 30,
                   ),),
               ),

               ListTile(
                 leading: Icon(Icons.settings,
                   color: Colors.black,
                   size: 30,),
                 title: Text("Settings",
                   style: TextStyle(
                     fontSize: 30,
                   ),),
               ),
               ListTile(
                 leading: Icon(Icons.settings,
                   color: Colors.black,
                   size: 30,),
                 title: Text("Settings",
                   style: TextStyle(
                     fontSize: 30,
                   ),),
               ),

             ],
           ),
         ),
        body: Column(
          children: [
           const CircleAvatar(
             radius: 50,
             backgroundColor: Colors.black,
             backgroundImage: AssetImage("images/abc.png"),
           ),
            const Text("Irfana  CH",
            style: TextStyle(
                fontSize:30,
             fontFamily: "Pacifico"
            ),),
            const Text("flutter developer",
            style: TextStyle(
              fontSize: 13,
              fontFamily: "YoungSerif"
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80,right: 70,top: 10),
              child: Container(
                color: Colors.white,
                child: const ListTile(
                  leading:Icon(Icons.phone,
                    size: 30,
                  color: Colors.grey,),
                  title: Text("+91 9567410969",
                          style: TextStyle(
                            color: Colors.black,
                         ),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 30,top: 20),
              child: Container(
                color: Colors.white,
                child: const ListTile(
                  leading:Icon(Icons.email,
                    size: 30,) ,
                  title:Text("irfana@gmail.com",
                  style: TextStyle(
                    color: Colors.black,),
                  ) ,
                  trailing: Icon(Icons.add),
                )
              ),
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const firstPage()));
            }, icon:const Icon( Icons.next_plan_sharp,
            size: 50,
            color: Colors.grey,)),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const firstPage()));
              },
                child: const Icon(Icons.add_box_outlined,size: 50,color: Colors.grey,)),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const firstPage()));
              },
              child: Container(
                height: 200,
                width: 150,
                color: Colors.yellow,
              ),
            )
          ],
            )
        ),
      );
    // );
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
//
// SizedBox(width: 20,)
// ],
// ),