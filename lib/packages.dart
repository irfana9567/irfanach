import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class packages extends StatefulWidget {
  const packages({super.key});

  @override
  State<packages> createState() => _packagesState();
}

class _packagesState extends State<packages> {
  var file;
  pickFile(ImageSource) async {
    final imageFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imageFile!.path);
    if(mounted){
      setState(() {
        file=File(imageFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PACKAGES",
        style:GoogleFonts.damion(
          fontSize: width*0.07,
        )
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Container(
                 height:width*0.2,
                 width: width*0.2,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(width*0.04),
                   color: Colors.pink,
                   image: DecorationImage(image: AssetImage("images/gift.gif"),fit: BoxFit.fill)
                 ),
               ) ,
                Container(
                  height:width*0.2 ,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: Colors.white,
                  ),
                  child: Lottie.asset("images/gift1.gif"),

                ) ,
                Container(
                  height:width*0.2 ,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: Colors.white,
                  ),
                  child: SvgPicture.asset("images/trophy.svg"),
                ) ,

                Container(
                  height:width*0.2 ,
                  width: width*0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: Colors.white
                  ),
                  child: CachedNetworkImage(imageUrl:"https://clipground.com/images/red-maple-leaf-clip-art-8.png",fit: BoxFit.fill,),
                ) ,

              ],
            ),
            SizedBox(height: width*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                   pickFile(ImageSource.camera);
                  },
                  child: Container(
                    height:width*0.1 ,
                    width: width*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: Colors.black),
                    child: Icon(Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                ) ,
                InkWell(
                  onTap: () {
                  pickFile(ImageSource.gallery);
                  },
                  child: Container(
                    height:width*0.1 ,
                    width: width*0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.04),
                      color: Colors.black,
                    ),
                    child: Icon(Icons.image,
                    color: Colors.white,),
                  ),
                ) ,
              ],
            ),
            SizedBox(height: width*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                file!=null?Container(
                  height:width*0.5 ,
                  width: width*0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.04),
                    color: Colors.pink,
                  ),
                  child: Image.file(file,fit: BoxFit.fill,),
                ) :
                Container(
                  height:width*0.5 ,
                  width: width*0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.04),
                    color: Colors.pink,
                  ),

                ) ,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
