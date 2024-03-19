import 'package:flutter/material.dart';

import 'main.dart';

class gridViewpage extends StatefulWidget {
  const gridViewpage({super.key});

  @override
  State<gridViewpage> createState() => _gridViewpageState();
}

class _gridViewpageState extends State<gridViewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("GRID VIEW")),
      ),
      body: Padding(
        padding: EdgeInsets.all(width*0.03),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 25,
                shrinkWrap: true,
                // scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  mainAxisSpacing: width*0.03,
                    crossAxisSpacing:width*0.03,
                  childAspectRatio: 1
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: width*0.25,
                    width: width*0.25,
                    color: Colors.grey,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
