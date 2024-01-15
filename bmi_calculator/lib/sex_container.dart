import 'package:flutter/material.dart';
class sexContainer extends StatelessWidget {
   sexContainer({required this.sex,required this.icon});

  final String sex;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Icon(
              icon,
              size: 80.0,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10.0,
            ),
              Text(
              '$sex',
              style: const TextStyle(
                color: Color(0xFF8D8E98),
              ),
            ),
          ]
      );
  }
}