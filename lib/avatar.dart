import 'package:flutter/material.dart';
import 'package:interactive_game/part1.dart';

class avatar extends StatefulWidget {
  avatar({Key? key}) : super(key: key);
  @override
  _avatarState createState() => _avatarState();
}

class _avatarState extends State<avatar> {
  String input1 = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/bg1.jpg"),
    fit: BoxFit.cover,
    ),
    ),
        child: Scaffold(
            backgroundColor: Colors.transparent,

            body: Center(
            child: Container(
              //margin: const EdgeInsets.fromLTRB(.0, 15.0, 0.0, 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Choose Your Avatar",
                        style: TextStyle(
                            fontFamily: 'Playfair Display',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                        //decoration: BoxDecoration(color: Colors.yellow[200]),
                        height: 200,
                        width: 300,
                        margin: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        //padding: const EdgeInsets.all(15.0),
                        child: Center(
                            child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Container(
                                height: 450,
                                width: 150,
                                //margin: const EdgeInsets.fromLTRB(15.0, 10.0, 3.0, 5.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    elevation: 25.0,
                                  ),
                                  child: Card(
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image.asset(
                                      'assets/images/saree1.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 5,
                                    //margin: EdgeInsets.all(10),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      input1 = "saree";
                                    });
                                    if(input1 == 'saree')
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => part1(),
                                      ),
                                    );
                                  },
                                ),
                              ),

                              Container(
                                height: 450,
                                width: 150,
                                //margin: const EdgeInsets.fromLTRB(15.0, 10.0, 3.0, 5.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    elevation: 25.0,
                                  ),
                                  child: Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: Image.asset(
                                    'assets/images/suit1.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  elevation: 5,
                                  //margin: EdgeInsets.all(10),
                                ),
                                  onPressed: () {
                                    setState(() {
                                      input1 = "Papa";
                                    });
                                    if(input1 == 'suit')
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => part1(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ])
                        )
                    )
                  ]),
            )
        )
        )
    );
  }
}