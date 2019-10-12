import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  @override
  Widget emptywidget(){

  }
  List <Widget> entries = new List(10);
  int i = 0;
  int j = 9;
  String s = 'X';
  void clear(){
    for(int k = 0; k<10; k++) {
      entries[k] = emptywidget();
    }
    j = 9;
  }
  Widget build(BuildContext context) {
  if(i%2==1){
    entries[j] = Center(child: Icon( Icons.close , size: 90, color: Colors.white ));
    s = 'O';
  }
  else{
    entries[j] = Icon( FontAwesomeIcons.circle , size: 70, color: Colors.white );
    s = 'X';
  }

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgroundimage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Tic-Tac-Toe',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Text(
                 'Player $s to move',
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.white70,
                 ),
               )
             ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: ReusableCard(
                              child: entries[0],
                              tapCallback: (){
                                setState(() {
                                    i = i +1;
                                    j=0;
                                });
                              }
                            )
                          ),
                          Expanded(
                            child: ReusableCard(
                              child: entries[1],
                                tapCallback: (){
                                  setState(() {
                                    i = i +1;
                                    j=1;
                                  });
                                }
                            )
                          ),
                          Expanded(
                            child: ReusableCard(
                              child: entries[2],
                                tapCallback: (){
                                  setState(() {
                                    i = i +1;
                                    j=2;
                                  });
                                }
                            )
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: ReusableCard(

                            child: entries[3],
                              tapCallback: (){
                                setState(() {
                                  i = i +1;
                                  j=3;
                                });
                              }
                          )
                        ),
                        Expanded(
                          child: ReusableCard(
                            child: entries[4],
                              tapCallback: (){
                                setState(() {
                                  i = i +1;
                                  j=4;
                                });
                              }
                          )
                        ),
                        Expanded(
                          child: ReusableCard(
                            child: entries[5],
                              tapCallback: (){
                                setState(() {
                                  i = i +1;
                                  j=5;
                                });
                              }
                          )
                        ),
                      ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: ReusableCard(
                              child: entries[6],
                                tapCallback: (){
                                  setState(() {
                                    i = i +1;
                                    j=6;
                                  });
                                }
                            )
                          ),
                          Expanded(
                            child: ReusableCard(
                              child: entries[7],
                                tapCallback: (){
                                  setState(() {
                                    i = i +1;
                                    j=7;
                                  });
                                }
                            )
                          ),
                          Expanded(
                            child: ReusableCard(
                              child: entries[8],
                                tapCallback: (){
                                  setState(() {
                                    i = i +1;
                                    j=8;
                                  });
                                }
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                     padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Container(
                        width: 200,
                        color: Colors.white30,
                        child: Center(
                          child: Text(
                            'Reset',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        )
                        ,
                      ),
                      onTap: (){
                        setState(() {
                          clear();
                        });
                      },
                    ),
                  )
                ],

              ),
            ),
            Expanded(
              flex: 2,
              child: Row(

              ),
            ),
          ],
        ),
      )

    );
  }
}
class ReusableCard extends StatelessWidget {

  final Widget child;
  final Function tapCallback;

  ReusableCard(
      { this.child, this.tapCallback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallback,
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white30,

        ),
        child: child,
      ),
    );
  }
}