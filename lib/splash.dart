import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizzapp/questions.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Questions()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("QUIZZ"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.network(
              'https://t4.ftcdn.net/jpg/04/59/08/23/360_F_459082310_KjTY7HV3Pv3k28nqZNXi8B3B4WcwMU40.jpg'),
        ),
      ]),
    );
  }
}