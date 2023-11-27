import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dicee',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: const DiceApp(),
    )
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
    int leftButton = 1;
    int rightButton = 1;

  @override
  Widget build(BuildContext context) {

  
    return  Center(
      child: Row(
      children:  <Widget>[
        
        Expanded(child: Padding(padding: 
        const EdgeInsets.all(16.0),
        child: TextButton(
          child: Image.asset('images/dice$leftButton.png'),
          onPressed: (){
           setState(() {
             leftButton = 1 + Random().nextInt(6);
           });
            },
        )
        )
        ),
        Expanded(child: Padding(padding:
        const EdgeInsets.all(16.0),
        child: TextButton(
          child: Image.asset('images/dice$rightButton.png'),
          onPressed: (){
            setState(() {
              rightButton = 1 + Random().nextInt(6);
            });
          },
          )
          )
          ),
      ]
    ),
    );
  }
}
