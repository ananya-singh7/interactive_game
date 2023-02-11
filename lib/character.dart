import 'package:flutter/material.dart';

import 'avatar.dart';

class character extends StatefulWidget {
  @override
  _characterState createState() => _characterState();
}

class _characterState extends State<character> {
  String input = "";

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

        body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 20.0),
            padding: const EdgeInsets.all(10.0),
            child: Text("Choose Your Character",
              style: TextStyle(
                  fontFamily: 'Playfair Display',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(15.0, 0.0, 25.0, 0.0),
              //padding: const EdgeInsets.all(15.0),
            child: Row(
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
                child: new Text("Mom",
                  style: TextStyle(fontSize: 12,
                      color: Colors.white
                  ),
                ),
                  onPressed: () {
                    setState(() {
                      input = "Mom";
                    });
                    if(input == 'Mom')
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => avatar(),
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
                  child: new Text("Dad",
                    style: TextStyle(fontSize: 12,
                        color: Colors.white
                    ),
                  ),
                    onPressed: () {
                      setState(() {
                        input = "Dad";
                      });
                      if(input == 'Dad')
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (_) => avatar(),
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
    );
  }
}