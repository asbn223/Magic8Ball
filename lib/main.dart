import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magic 8 Ball",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Magic 8 Ball"),
          backgroundColor: Colors.blue[300],
        ),
        body: Magic8Ball(),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballnumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
