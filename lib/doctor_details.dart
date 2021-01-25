import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Doctor_Details_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Doctor_Details_State();
  }

}

// ignore: camel_case_types
class Doctor_Details_State extends State<Doctor_Details_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Expanded(
                    child: ListView(
                      children: [
                        Container(
                          child: Image.network("https://www.axxelis.ch/wp-content/uploads/2017-physician-shortage.jpg"),
                          height: 190,
                        ),
                        FractionalTranslation(
                          translation: Offset(0.0, -0.07),
                          child: Container(
                            child: Card(
                              elevation: 10,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45.0),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            child: ListTile(
                                              leading: Image.network("https://image.freepik.com/free-vector/doctor-character-background_1270-84.jpg",
                                                height: 60,width: 60,),
                                              title: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("Dr. Stella Kane",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text("Heart Surgeon - Flower Hospitals",style: TextStyle(color: Colors.deepPurple,fontSize: 12),),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              subtitle: Row(
                                                children: [
                                                  Container(
                                                    child: Icon(
                                                      Icons.call,
                                                      color: Colors.blue,
                                                      size: 18,
                                                    ),
                                                    // color: Colors.blue[100],
                                                    height: 30,
                                                    width: 30,
                                                    margin: const EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Colors.blue[100],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Icon(
                                                      Icons.message,
                                                      color: Colors.orange,
                                                      size: 18,
                                                    ),

                                                    height: 30,
                                                    width: 30,
                                                    margin: const EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Colors.orange[100],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Icon(
                                                      Icons.videocam_rounded,
                                                      color: Colors.red,
                                                      size: 18,
                                                    ),

                                                    height: 30,
                                                    width: 30,
                                                    margin: const EdgeInsets.all(3),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Colors.red[100],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          padding: const EdgeInsets.only(top: 15, left: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text("About Doctor",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                        padding: const EdgeInsets.only(left: 10,top: 15),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text("Dr. Stella is the top most heart surgeon in Flower Hospite. She has done over 100 successful surgeries within past 3 years. She has achieved several awards for her wonderful contribution in her own field. she's available for private consultation for given schedules.",
                                            style: TextStyle(color: Colors.deepPurple,fontSize: 14),),
                                          padding: const EdgeInsets.only(left: 10,top: 5),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text("Upcoming Schedules",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                        padding: const EdgeInsets.only(left: 10,top: 10),
                                      )
                                    ],
                                  ),
                                  Container(
                                    child: Column(
                                      children: <Widget> [
                                        FlatButton(
                                          onPressed: (){},
                                          child:  Container(
                                            height: 65,
                                            child: ListTile(
                                              leading: Container(
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text("24",style: TextStyle(color: Colors.blue[900],),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("Jan",style: TextStyle(color: Colors.blue[900],),),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  padding: const EdgeInsets.only(left: 8, top: 5)
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[200],
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                width: 40,
                                                height: 40,
                                              ),
                                              title: Text("Consultation",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                              subtitle: Text("Sunday . 9am-11am",style: TextStyle(color: Colors.deepPurple),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.blue[100],
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            padding: const EdgeInsets.all(0),
                                            margin: const EdgeInsets.only(bottom: 5),
                                          ),
                                          padding: const EdgeInsets.all(0),
                                        ),
                                        FlatButton(
                                          onPressed: (){},
                                          child:  Container(
                                            height: 65,
                                            child: ListTile(
                                              leading: Container(
                                                child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text("25",style: TextStyle(color: Colors.yellow[900],),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Jan",style: TextStyle(color: Colors.yellow[900],),),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    padding: const EdgeInsets.only(left: 8, top: 5)
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.yellow[300],
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                width: 40,
                                                height: 40,
                                              ),
                                              title: Text("Consultation",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                              subtitle: Text("Monday . 9am-11am",style: TextStyle(color: Colors.deepPurple),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.yellow[100],
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            padding: const EdgeInsets.all(0),
                                            margin: const EdgeInsets.only(bottom: 5),
                                          ),
                                          padding: const EdgeInsets.all(0),
                                        ),
                                        FlatButton(
                                          onPressed: (){},
                                          child: Container(
                                            height: 65,
                                            child: ListTile(
                                              leading: Container(
                                                child: Container(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text("26",style: TextStyle(color: Colors.orange[900],),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text("Jan",style: TextStyle(color: Colors.orange[900],),),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    padding: const EdgeInsets.only(left: 8, top: 5)
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Colors.orange[300],
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                width: 40,
                                                height: 40,
                                              ),
                                              title: Text("Consultation",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
                                              subtitle: Text("Tuesday . 9am-11am",style: TextStyle(color: Colors.deepPurple),),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.orange[100],
                                                borderRadius: BorderRadius.circular(20)
                                            ),
                                            padding: const EdgeInsets.all(0),
                                            margin: const EdgeInsets.only(bottom: 5),
                                          ),
                                          padding: const EdgeInsets.all(0),
                                        ),
                                      ],
                                    ),
                                    margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                                    // height: 143,
                                  ),
                                ],
                              ),
                              margin: const EdgeInsets.all(0),
                            ),
                              height: 500,
                              width: 330,
                              // child: Image.asset("assets/images/tooth1.png"),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              padding: const EdgeInsets.only(left: 0),
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
        )
    );
  }

}