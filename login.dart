import 'package:flutter/material.dart';

import 'package:health_is_wealth/register.dart';

import 'Home.dart';

// ignore: camel_case_types
class Login_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login_State();
  }

}

// ignore: camel_case_types
class Login_State extends State<Login_Session>{
  final email = TextEditingController();
  final pass = TextEditingController();
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  // ignore: non_constant_identifier_names
  void Login(){
    setState(() {
      var myEmail = email.text;
      var myPass = pass.text;
      if(myEmail == "adarsh@gmail.com" && myPass == "1234") {
        return showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Message"),
                  content: Text("You Have Successfully Logged in"),
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
      }
      else {
        return showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Message"),
                  content: Text("Please register"),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register_Session(),),
                        );
                      },
                      child: Text("OK"),
                    ),
                  ],
                ),
              );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      //   backgroundColor: Colors.purple[900],
      // ),
      body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.65,
            // 0.6,
            // 0.7,
            0.4,
          ],
          colors: [
            Colors.deepPurple[600],
            // Colors.purple,
            // Colors.purple,
            Colors.deepPurpleAccent
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
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("LOGIN", style: TextStyle(fontSize: 20),),
                        padding: const EdgeInsets.only(left: 10.0, top: 0.0, right: 0, bottom: 0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child:  TextField(
                            decoration: InputDecoration(
                              labelText: "Email",
                            ),
                            controller: email,
                          ),
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10, bottom: 5),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: TextField(
                              obscureText: _isHidden,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              controller: pass,
                            ),
                            width: 320,
                            padding: const EdgeInsets.only(left: 10.0, top: 5.0, right: 10, bottom: 5),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text("Forgot Password?"),
                            padding: const EdgeInsets.only(left: 195.0, top: 0.0, right: 10, bottom: 5),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: RaisedButton(
                          child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                          onPressed: Login,
                          color: Colors.purple[900],
                        ),
                        margin: const EdgeInsets.only(left: 115.0, top: 5.0, right: 25.0, bottom: 5.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Terms & Conditions"),
                        margin: const EdgeInsets.only(left: 5.0, top: 80.0, right: 25.0, bottom: 5.0),
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
            MaterialPageRoute(builder: (context) => Register_Session(),),
          );
        },
        tooltip: 'Register',
        child: Icon(
          Icons.add,
          size: 45,
        ),
      ),
    ),
    );



  }

}