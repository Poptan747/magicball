import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

int ballNumber = 0;

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[100],
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.blue[800],
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
          onPressed: (){
            setState(() {
              randomize();
            });
          },
            child: Image.asset("images/ball$ballNumber.png")
        ),
      ),
    );
  }
}

void randomize(){
  ballNumber = Random().nextInt(5)+1;
  print('Randomize Number - $ballNumber ' );
}

