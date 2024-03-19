import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class taskPage extends StatefulWidget {
  const taskPage({super.key});

  @override
  State<taskPage> createState() => _taskPageState();
}

class _taskPageState extends State<taskPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
        ),
        body: Column(
          children: [
           Container(
             child: TabBar(tabs: [
               Tab(text: "A",),
               Tab(text: "A",),
               Tab(text: "A",),
             ]),
           ),
            Expanded(
              child: TabBarView(children: [
                Container(),
                Container(),
                Container(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
