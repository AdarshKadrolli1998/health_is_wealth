import 'package:flutter/material.dart';

import 'calculate_BMI.dart';

// ignore: camel_case_types
class Book_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Session_State();
  }

}

// ignore: camel_case_types
class Session_State extends State<Book_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          title: Text("Book your class"),
          backgroundColor: Colors.purple[900],
        ),
        body: Container(
          child: Column(
            children: <Widget> [
              Container(
                child: RaisedButton(
                  child: Text("Book Now"),
                  color: Colors.deepOrange,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BMI_Calc(),),
                    );
                  },
                ),
                margin: const EdgeInsets.only(left: 35.0, top: 5.0, right: 25.0, bottom: 5.0),
              ),
              Container(
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget> [
                      Image.network("https://media2.giphy.com/media/3oKIPavRPgJYaNI97W/giphy.gif?cid=ecf05e47bwdtjd5dte4wmtsxjufj3zmiq9lurayuhzk6wkso&rid=giphy.gif"),
                      Image.network("https://media1.giphy.com/media/gjHstk21AlMPo4yag0/giphy.gif?cid=ecf05e47b0859e2f3cd27f440d95ab86d4b768d0bbc76b5b&rid=giphy.gif"),
                      Image.network("https://media1.giphy.com/media/kcT0AAkJxu8xTKfjwd/giphy.gif?cid=ecf05e47bca5d05aab50223740e2918f2ca2d20ccf3c97b7&rid=giphy.gif"),
                    ],
                  ),
                ),
                height: 150,
              ),

            ],
          ),
        ),

    );
  }

}