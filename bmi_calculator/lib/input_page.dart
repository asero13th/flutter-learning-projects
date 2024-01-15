import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sex_container.dart';
import 'my_container.dart';
import 'results_page.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color  maleCardColour = inactiveCardColour;
  Color  femaleCardColour = inactiveCardColour;
  int weight = 60;
  int height = 180;
  int age = 18;
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title:const  Center(child:  Text('BMI CALCULATOR')),
        
      ),
      body:   Column(
         children:  <Widget>[ 
          Expanded(
            child:  Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        maleCardColour = activeCardColour;
                        femaleCardColour = inactiveCardColour;
                      });
                    },
                    child: MyContainer(
                      colour: maleCardColour,
                      cardChild: sexContainer(icon: FontAwesomeIcons.mars,sex: 'Male',)
                    ),
                  )
                ),
                 Expanded(
                 child: GestureDetector(
                  onTap: (){
                    setState(() {
                      femaleCardColour = activeCardColour;
                      maleCardColour = inactiveCardColour;
                    });
                  },
                   child: MyContainer(
                     colour: femaleCardColour,
                     cardChild: sexContainer(icon: FontAwesomeIcons.venus,sex: 'Female',)
                   ),
                 )
                )
              ] 
          )
          ),
           Expanded(
            child: MyContainer(
              colour: activeCardColour,
              cardChild:   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    const Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
        
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: const TextStyle(
                          fontSize: 50.0,
                        ),
                      ),
                      const Text(
                        'cm',
                      ),
                      
                    ],
                  ),
                  Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 220,
                        activeColor: const Color(0xFFEB1555),
                        inactiveColor:const Color(0xFF8D8E98),
                        onChanged: (double newValue){
                          // do something here
                          setState(() {
                            height = newValue.round();
                          });
                        }
                      )
                ],
              ),
            )
          ),
           Expanded(
            child:  Row(
              children: <Widget>[
                 Expanded(
                  child: MyContainer(
                    colour: const Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Weight',
                        ),
                         Text(
                        weight.toString(),
                         style: const TextStyle(
                           fontSize: 50.0,
                         ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: Icons.remove, onpress: (){
                              setState(() {
                                weight--;
                              });
                            },),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(icon: Icons.add, onpress: (){
                              setState(() {
                                weight++;
                              });
                            },),
                          ],
                        )
                      ]),
                  )
                ),
                 Expanded(
                  child:  MyContainer(
                    colour: const Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget> [
                      const Text(
                        'Age',
                      ),
                      Text(
                        age.toString(),
                        style: const TextStyle(
                          fontSize: 50.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: Icons.remove, onpress: (){
                            setState(() {
                              age--;
                            });
                          }
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(icon: Icons.add, onpress: (){
                            setState(() {
                              age++;
                            });
                          })
                        ]
                      )
                    ]),
                  )
                )
              ]
            
          )
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder:(context){
                return const ResultsPage();
              }));
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
      
      ),
      // bottomNavigationBar:  BottomAppBar(
      //   child: TextButton(
      //     onPressed: (){},
      //     child: Container(
      //       height: 80.0,
      //       color: bottomContainerColour,
      //       child: const  Center(
      //         child: Text(
      //           'CALCULATE YOUR BMI',
      //           style: TextStyle(color: Colors.white),  
      //           )

      //         ),
      //     ),
      //   )
      // ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon,required this.onpress});
  
  final icon;
  final Function()  onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      elevation:0.0 ,
      constraints:const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: const CircleBorder(),
      fillColor:const Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}