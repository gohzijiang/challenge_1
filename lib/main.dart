
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),

        ),
        body: Ball(),

      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => BallState();
}
class BallState extends State<Ball> {

  int ballNumber = 1;
  @override

  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
              onPressed: () {
                setState(() {
                  randomize();
                });
                print('$ballNumber is printed');
              },
              child: Image.asset('images/ball$ballNumber.png')),
        )
    );
  }
  void randomize(){
    ballNumber = Random().nextInt(5)+1;
  }
}