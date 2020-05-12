import 'package:flutter/material.dart';
import 'package:spellingquizapp/home.dart';
import './splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "QuizApp",
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: splashscreen());
  }
}

class nextScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new nextScreenState();
  }
}

class nextScreenState extends State<nextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => homepage()));
          },
          child: Text("Begin Quiz"),
        ),
      ),
    );
  }
}
