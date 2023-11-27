import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return(
      MaterialApp(
         home:  Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children:   <Widget>[  
                 const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1554151228-14d9def656e4?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), 
                   
                ),
                 const Text(
                  'Cristian Hernandez',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),
                const Text(
                  'SOFTWARE ENGINEER',
                  style: TextStyle(
                    fontFamily: 'arial',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber
                  ),
                   
                ),
                Container(
                 color: Colors.white,
                 margin: const  EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                 padding: const EdgeInsets.all(10.0),
                  child: Row(
                   
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        '+251975192086',
                        style: TextStyle(
                          color: Colors.teal
                          
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                 color: Colors.white,
                 margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                 padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.teal.shade900,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        'aserhailu2020@gmail.com',
                        style: TextStyle(
                          color: Colors.teal
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          )
        )
      )
    );
  }
}