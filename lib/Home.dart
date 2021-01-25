import 'package:flutter/material.dart';
import 'package:health_is_wealth/about_us.dart';
import 'package:health_is_wealth/doctor.dart';
import 'calculate_BMI.dart';
import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class Home_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home_State();
  }

}

// ignore: camel_case_types
class Home_State extends State<Home_Session>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.purple[900],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: ListTile(
                    title: Text("Hello,",style: TextStyle(fontSize: 23),),
                    subtitle: Text("How can we take care yourself?",style: TextStyle(fontSize: 18),),
                  ),
                  width: 300,
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Doctor_Session(),),
                            );
                          },
                        padding: const EdgeInsets.all(0),
                          child: Card(
                            child: Container(
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.account_box_outlined,
                                      color: Colors.white,
                                      size: 30,),
                                  ),
                                  ListTile(
                                    title: Text("Find Doctor",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    subtitle: Text("210 Doctors",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white60,
                                      ),),
                                    contentPadding: const EdgeInsets.only(top: 0, left: 15),
                                  )
                                ],
                              ),
                              width: 130,
                              height: 130,
                            ),
                            color: Colors.deepPurpleAccent,
                          ),
                      ),
                      FlatButton(
                          onPressed: null,
                        padding: const EdgeInsets.all(0),
                          child: Card(
                            child: Container(
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.business,
                                      color: Colors.white,
                                      size: 30,),
                                  ),
                                  ListTile(
                                    title: Text("Find Hospital",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    subtitle: Text("30 Hospital",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white60,
                                      ),),
                                    contentPadding: const EdgeInsets.only(top: 0, left: 15),
                                  )
                                ],
                              ),
                              width: 130,
                              height: 130,
                            ),
                            color: Colors.deepPurple,
                          ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: null,
                        padding: const EdgeInsets.all(0),
                        child: Card(
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.library_add_rounded,
                                  color: Colors.white,
                                  size: 30,),
                              ),
                              ListTile(
                                title: Text("Appointment",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text("59 Available",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                  ),),
                                contentPadding: const EdgeInsets.only(top: 0, left: 15),
                              )
                            ],
                          ),
                          width: 130,
                          height: 130,
                        ),
                        color: Colors.deepPurple,
                      ),
                      ),
                      FlatButton(
                          child: Card(
                            child: Container(
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.list_alt,
                                      color: Colors.white,
                                      size: 30,),
                                  ),
                                  ListTile(
                                    title: Text("Drug List",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    subtitle: Text("22 Services",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white60,
                                      ),),
                                    contentPadding: const EdgeInsets.only(top: 0, left: 15),
                                  )
                                ],
                              ),
                              width: 130,
                              height: 130,
                            ),
                            color: Colors.deepPurple,
                          ),
                          onPressed: null,
                        padding: const EdgeInsets.all(0),
                      ),
                    ],
                  ),
                ],
              ),
              padding: const EdgeInsets.only(top: 35, left: 22, right: 22),
            ),
          ],
        ),
      ),
      drawer: Container(
        width: 205,
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.purple[900]
                ),
                accountName: Text("Adarsh"),
                accountEmail: Text("adarsh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Image.network("https://eshendetesia.com/images/user-profile.png"),
                ),
              ),
              ListTile(
                leading: Container(
                  child: Image.asset("assets/images/bmi1.png"),
                  height: 25,
                ),
                title: Text("Calculate BMI"),
                onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BMI_Calc(),),
                );
                  },
              ),
              ListTile(
                leading: Container(
                  child: Image.asset("assets/images/calories-calculator.png"),
                  height: 25,
                ),
                title: Text("Calculate Calories"),
                onTap: (){},
              ),
              ListTile(
                leading: Container(
                  child: Image.asset("assets/images/appointment.png"),
                  height: 25,
                ),
                title: Text("Book Session"),
                onTap: (){},
              ),
              ListTile(
                leading: Container(
                  child: Image.asset("assets/images/information.png"),
                  height: 25,
                ),
                title: Text("About Us"),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About_Session(),),
                  );
                },
              ),
              ListTile(
                 leading: Container(
                   child: Image.asset("assets/images/logout.png"),
                   height: 25,
                 ),
                 title: Text("Log out"),
                 onTap: () {
                   // SharedPreferences pref = await SharedPreferences.getInstance();
                   // pref.remove('username');
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Login_Session(),),
                   );
                 },
               ),
            ],
          ),
        ),
      ),
        ),
    );
  }

}