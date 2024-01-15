import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              child: Image.asset('images/ball$ball.png'),
              onPressed: (){
                setState(() {
                  ball = Random().nextInt(5) + 1;
                }
                ,);
              }
              ,),
          )
        ),
      )
    );
  }
}