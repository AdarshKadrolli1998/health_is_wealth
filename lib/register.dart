import 'package:flutter/material.dart';

import 'Home.dart';
import 'login.dart';

// ignore: camel_case_types
class Register_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Register_State();
  }

}

// ignore: camel_case_types
class Register_State extends State<Register_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.30,
                  0.6,
                  0.7,
                  0.20,
                ],
                colors: [
                  Colors.deepPurple[600],
                  Colors.deepPurpleAccent,
                  Colors.deepPurpleAccent,
                  Colors.deepPurpleAccent,
                ])),
        child: Column(
          children: [
            Expanded(
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/images/hw.png"),
                          height: 150,
                          padding: const EdgeInsets.only(left: 60.0, top: 0.0, right: 0, bottom: 5),
                          margin: const EdgeInsets.all(0),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text("REGISTER", style: TextStyle(fontSize: 20),),
                          padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 0, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "First Name",
                            ),
                          ),
                          width: 320,
                          padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Last Name",
                            ),
                          ),
                          width: 320,
                          padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Email",
                            ),
                          ),
                          width: 320,
                          padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Password",
                            ),
                            obscureText: true,
                          ),
                          width: 320,
                          padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: RaisedButton(
                            child: Text("CREATE ACCOUNT",style: TextStyle(color: Colors.white),),
                            onPressed: () {
                              return showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text("Message"),
                                  content: Text("Registered Successfully "),
                                  actions: <Widget>[
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Home_Session(),),
                                        );
                                      },
                                      child: Text("OK"),
                                    ),
                                  ],
                                ),
                              );
                            },
                            color: Colors.purple[900],
                          ),
                          margin: const EdgeInsets.only(left: 85.0, top: 5.0, right: 25.0, bottom: 5.0),
                        ),
                      ],
                    ),
                  ],
                ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[900],
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login_Session(),),
        );
        },
        tooltip: 'Cancel',
        child: Icon(
          Icons.remove,
          size: 45,
        ),
      ),
      ),
    );
  }

}