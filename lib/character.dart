

import 'package:flutter/material.dart';

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
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            child: Text("Choose Your Character",
              style: TextStyle(
                  fontFamily: 'Playfair Display',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
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
                  elevation: 15.0,
                ),
                child: new Text("Mummy",
                  style: TextStyle(fontSize: 10,
                      color: Colors.white
                  ),
                ),
                onPressed: null,
              ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(15.0, 10.0, 3.0, 5.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 15.0,
                  ),
                  child: new Text("Papa",
                    style: TextStyle(fontSize: 10,
                        color: Colors.white
                    ),
                  ),
                  onPressed: null,
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