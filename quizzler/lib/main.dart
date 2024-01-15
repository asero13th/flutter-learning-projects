import 'package:flutter/material.dart';

void main() {
  runApp(const Quizlerr());
}
// TODO: rememper me this to do it later

class Quizlerr extends StatelessWidget {
  const Quizlerr({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home:  Scaffold(
     body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0), 
        child: _QuizAppState()
        )
        ),
    )
  );
  }
}

class _QuizAppState extends StatefulWidget {
  const _QuizAppState({super.key});

  @override
  State<_QuizAppState> createState() => __QuizAppStateState();
}

class __QuizAppStateState extends State<_QuizAppState> {

  List <Widget> bunchOfIcons = [
    // const Icon(
    //   Icons.check,
    //   color: Colors.green,
    // ),
    // const Icon(
    //   Icons.close,
    //   color: Colors.red,
    // )
  ];

  List<String> questions = [
    "Aser is one of the greatest man in the world",
    "Cristiano is one of the greatest footballer in the world",
    "Messi is one of the greatest footballer in the world",
  ];

  List<bool> answers = [
    true,
    false,
    true,
  ];
  int  questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding:const EdgeInsets.all(10.0),
              child: Center(child: Text(questions[questionNumber]) ,
            )
            ),
          ),
          Expanded(
            flex: 1,
           
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      if (answers[questionNumber] == true) {
                        bunchOfIcons.add(
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                        );
                      }else{
                        bunchOfIcons.add(
                              const Icon(
                                Icons.close,
                                color: Colors.red,
                              )
                        );
                      }
                      
                      questionNumber++;
                      if (questionNumber >= questions.length) {
                            questionNumber = 0;
                    }
                    });
                  }, 
                  child: const  Text("True"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                 onPressed: (){
                    setState(() {
                      if (answers[questionNumber] == false) {
                        bunchOfIcons.add(
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                              ),
                        );
                      }else{
                        bunchOfIcons.add(
                              const Icon(
                                Icons.close,
                                color: Colors.red,
                              )
                        );
                      }
                      
                      questionNumber++;
                      if (questionNumber >= questions.length) {
                            questionNumber = 0;
                    }
                    });
                  },
                child: const Text("False"),
              ),
            )
          ),
          Row(
            children: bunchOfIcons,
          )
        ]
        );
  }
} 