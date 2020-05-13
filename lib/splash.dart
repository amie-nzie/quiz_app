import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';

class splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new splashscreenState();
  }
}

class splashscreenState extends State<splashscreen> {
  Widget customcard() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        child: Material(
          color: Colors.blueGrey,
          elevation: 30.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
              child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Material(
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    alignment: Alignment.center,
                    child: Text(
                      "Want to know how good you spell?",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 30), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        customcard(),
      ],
    ));
  }
}
