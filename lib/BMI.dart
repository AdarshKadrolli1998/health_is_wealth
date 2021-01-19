import 'package:flutter/material.dart';
import 'booksession.dart';

// ignore: camel_case_types
class BMI_Calc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BMI();
  }
}

class BMI extends State<BMI_Calc>{
  final myHeight = TextEditingController();
  final myWeight = TextEditingController();
  // ignore: non_constant_identifier_names
  var BMIResult;
  var result;
  int _value= 1;
  // ignore: non_constant_identifier_names
  void CalculateBmi(){
    setState(() {
      double weight = double.parse(myWeight.text);
      double height = double.parse(myHeight.text);
      var mass = weight*10000;
      var height1 = height * 30.48;
      var heightSquare = height1 * height1;
      BMIResult = mass / heightSquare;
      if(BMIResult > 30){
        result="Obesity";
      }
      else if(BMIResult > 25.0) {
        result="Over Weight";
      }
      else if(BMIResult > 18.50) {
        result="Healthy Weight";
      }
      else {
        result="Under Weight";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculate BMI"),
          backgroundColor: Colors.purple[900],
        ),
        body: Container(
          child: Column(
            children: <Widget> [

              Row(
                children: <Widget> [
                  Container(
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Weight in KG",
                      ),
                      controller: myWeight,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget> [
                  Container(
                    width: 320,
                   child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your Height in Feet"
                      ),
                      controller: myHeight,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: RaisedButton(
                      child: Text("Calculate",style: TextStyle(color: Colors.white),),
                      onPressed: CalculateBmi,
                      color: Colors.purple[900],
                    ),
                    margin: const EdgeInsets.only(left: 115.0, top: 5.0, right: 25.0, bottom: 5.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                   child: Text(
                      'Your BMI - $BMIResult',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      'You are - $result',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Container(
              //       child: RaisedButton(
              //         child: Text("Yoga"),
              //         onPressed: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => Book_Session(),),
              //           );
              //         },
              //         color: Colors.deepOrange,
              //       ),
              //       margin: const EdgeInsets.only(left: 115.0, top: 5.0, right: 25.0, bottom: 5.0),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

}