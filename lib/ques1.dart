import 'package:flutter/material.dart';
import 'package:interactive_game/part2.dart';

class ques1 extends StatefulWidget {
  @override
  _ques1State createState() => _ques1State();
}

class _ques1State extends State<ques1> {
  String input2 = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/que1.jpg"),
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
                      child: Text("Question1",
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
                                      input2 = "1";
                                    });
                                    if(input2 == '1')
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => part2(),
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
                                      input2 = "2";
                                    });
                                    if(input2 == '2')
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => part2(),
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
                                      input2 = "3";
                                    });
                                    if(input2 == '3')
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => part2(),
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