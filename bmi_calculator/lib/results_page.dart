import "package:flutter/material.dart";
import 'my_container.dart';
import 'sex_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';
class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: <Widget>[ 
           Expanded(
            child:  Container(
              padding:const  EdgeInsets.all(20.0),
              child: const Text(
                'Your Result',
                style:TextStyle(fontSize: 50.0),
              ),
            ),
          ),
        Expanded(
          flex: 5,
        child: MyContainer(
          cardChild: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
               Text(
                'Normal',
                style: TextStyle(
                  color: Color(0xFF24D876),
                  fontSize: 22.0,
                )
              ),
              Text(
                '18.5',
                style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                
                )
              ),
              Text(
                'You have a normal body weight. Good job!',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFF8D8E98),
                  
                ),
                textAlign: TextAlign.center,
              )
            ]
          ),
          colour: const Color(0xFF1D1E33),
        )
        ),
       GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container( 
              color: bottomContainerColour,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              child: const Center(  child: Text("CALCULATE")),
            ),
          )
            ],
          )
          );
  }
}