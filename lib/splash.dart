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
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          "Spelling Quiz",
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}
