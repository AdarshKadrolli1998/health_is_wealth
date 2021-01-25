import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: camel_case_types
class About_Session extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return About_State();
  }

}

// ignore: camel_case_types
class About_State extends State<About_Session>{
  // ignore: non_constant_identifier_names
  open_site() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // ignore: non_constant_identifier_names
  send_sms() async {
    const no = 'sms:1234567890';
    if (await canLaunch(no)) {
      await launch(no);
    } else {
      throw 'Could not launch $no';
    }
  }

  // ignore: non_constant_identifier_names
  make_call() async {
    const num = 'tel://1234567890';
    if (await canLaunch(num)) {
      await launch(num);
    } else {
      throw 'Could not launch $num';
    }
  }

  // ignore: non_constant_identifier_names
  send_mail() async {
    const email = 'mailto:adarsh@gmail.com?subject=training&body=flutter training';
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'Could not launch $email';
    }
  }


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
                Container(
                  child: Image.asset("assets/images/hw.png"),
                  height: 150,
                  padding: const EdgeInsets.only(left: 15.0, top: 0.0, right: 0, bottom: 0),
                  margin: const EdgeInsets.all(0),
                ),
                Row(
                  children: [
                    Container(
                      child: Text("Health is Wealth",style: TextStyle(
                          color: HexColor('#ffffff'),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ),),
                      padding: const EdgeInsets.only(top: 10,left: 10),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text("Health is like money, we never have a true idea of its value until we lose it.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        padding: const EdgeInsets.only(top: 10,left: 10, right: 10),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: (){
                          send_mail();
                        },
                        child: Container(
                          child: Text("Send a mail",style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.only(left: 4),
                        ),
                      ),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.purple[900],
                          borderRadius: BorderRadius.circular(50)
                      ),
                      margin: const EdgeInsets.only(top: 50, left: 35, right: 5),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: (){
                          make_call();
                        },
                        child: Container(
                          child: Text("Make a call",style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.only(left: 4),
                        ),
                      ),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.purple[900],
                          borderRadius: BorderRadius.circular(50)
                      ),
                      margin: const EdgeInsets.only(top: 50, left: 25, right: 5),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: (){
                          send_sms();
                        },
                        child: Container(
                          child: Text("Send SMS",style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.only(left: 4),
                        ),
                      ),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.purple[900],
                          borderRadius: BorderRadius.circular(50)
                      ),
                      margin: const EdgeInsets.only(top: 35, left: 35, right: 5),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: (){
                          open_site();
                        },
                        child: Container(
                          child: Text("Open site",style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.only(left: 4),
                        ),
                      ),
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.purple[900],
                          borderRadius: BorderRadius.circular(50)
                      ),
                      margin: const EdgeInsets.only(top: 35, left: 25, right: 5),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }

}