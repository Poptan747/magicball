import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_ripple/flutter_ripple.dart';

void main() {
  runApp(BallPage());
}

int ballNumber = 0;

final dur = Duration(
  seconds: 5,
);

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything',
              style: TextStyle(
                fontFamily: 'MedievalSharp',
                fontSize: 30,
              ),
            )),
            backgroundColor: Colors.grey[900],
          ),
          body: Ball(),
        ),
      );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    if(ballNumber==0) randomize();
    return FlutterRipple(
      rippleColor: Colors.grey,
      radius: 300,
      duration: dur,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: TextButton(

            onPressed: (){
              setState(() {
                randomize();
              });
            },
              child: Image.asset("images/ball$ballNumber.png")
          ),
        ),
      ),
    );
  }
}

void randomize(){
  ballNumber = Random().nextInt(5)+1;
  print('Randomize Number - $ballNumber ' );
}

