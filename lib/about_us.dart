import 'package:flutter/material.dart';

class About_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return About_State();
  }

}

class About_State extends State<About_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Container(
                  child: Image.asset("assets/images/about.jpg"),
                )
              ],
            ),
          ),
        ),
    );
  }

}