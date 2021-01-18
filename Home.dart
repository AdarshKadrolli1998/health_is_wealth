import 'package:flutter/material.dart';
import 'calculate_BMI.dart';
import 'login.dart';

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
                  height: 35,
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
                  height: 35,
                ),
                title: Text("Calculate Calories"),
                onTap: (){},
              ),
              ListTile(
                leading: Container(
                  child: Image.asset("assets/images/appointment.png"),
                  height: 35,
                ),
                title: Text("Book Session"),
                onTap: (){},
              ),
              ListTile(
                leading: Container(
                  child: Image.asset("assets/images/logout.png"),
                  height: 35,
                ),
                title: Text("Log out"),
                onTap: (){
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