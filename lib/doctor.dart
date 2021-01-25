import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:health_is_wealth/find_doctor.dart';
// ignore: camel_case_types
class Doctor_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Doctor_State();
  }

}

// ignore: camel_case_types
class Doctor_State extends State<Doctor_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                ClipPath(
                  clipper: WaveClipperOne(flip: true),
                  child: Container(
                    height: 135,
                    color: Colors.deepPurple[500],
                    child: Center(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text("Choose The Doctor You Want",
                                style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(top: 35, left: 22, right: 5),
                      ),
                    ),
                  ),
                ),

                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child:  Text("Lorem ipsum dolor amet, consectetur adipiscing inet deli",
                        style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 15),
                      ),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(top: 0, left: 22, right: 5),
                ),
                Container(
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Find_Doctor_Session(),),
                          );
                        },
                        child: Container(
                          child: Text("Get Started",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.purple[900],
                    borderRadius: BorderRadius.circular(50)
                  ),
                  margin: const EdgeInsets.only(top: 70, left: 0, right: 5),
                ),
                
              ],
            ),
          ),
        ),
    );
  }

}