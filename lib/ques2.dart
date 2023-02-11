import 'package:flutter/material.dart';
import 'package:interactive_game/character.dart';
import 'package:interactive_game/part2.dart';

class ques2 extends StatefulWidget {
  @override
  _ques2State createState() => _ques2State();
}

class _ques2State extends State<ques2> {
  String input3 = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/que2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,

            body: Container(
                margin: const EdgeInsets.fromLTRB(175.0, 40.0, 0.0, 0.0),
                height: 300,
                //color: Colors.green,
                child: Center(
                    child: Card(
                      color: Colors.transparent,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 20.0),
                              padding: const EdgeInsets.all(7.0),
                              child: Text("Question2",
                                style: TextStyle(
                                    fontFamily: 'Playfair Display',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.fromLTRB(15.0, 0.0, 25.0, 0.0),
                                //padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Container(
                                        margin: const EdgeInsets.fromLTRB(15.0, 10.0, 3.0, 5.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            elevation: 25.0,
                                          ),
                                          child: new Text("Option1",
                                            style: TextStyle(fontSize: 14,
                                                color: Colors.white
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              input3 = "1";
                                            });
                                            if(input3 == '1')
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (_) => character(),
                                                ),
                                              );
                                          },
                                        ),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.fromLTRB(15.0, 10.0, 3.0, 5.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            elevation: 25.0,
                                          ),
                                          child: new Text("Option2",
                                            style: TextStyle(fontSize: 14,
                                                color: Colors.white
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              input3 = "2";
                                            });
                                            if(input3 == '2')
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (_) => character(),
                                                ),
                                              );
                                          },
                                        ),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.fromLTRB(15.0, 10.0, 3.0, 5.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            elevation: 25.0,
                                          ),
                                          child: new Text("Option3",
                                            style: TextStyle(fontSize: 14,
                                                color: Colors.white
                                            ),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              input3 = "3";
                                            });
                                            if(input3 == '3')
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (_) => character(),
                                                ),
                                              );
                                          },
                                        ),
                                      ),
                                    ])
                            )
                          ]),
                    )
                )
            )
        )
    );
  }
}