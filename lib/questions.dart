import 'package:flutter/material.dart';
import 'package:quizzapp/questions.dart';
import 'package:quizzapp/saval.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int index=0;
  void nextQus(){
    if (index<Questions.length){
      index++;
    }

  }
  List Questions=[
    Quiz(qus: 'Does nandana have a brain ?', ans: false),
    Quiz(qus: 'Does nandana eat a lot of food', ans: true),
    Quiz(qus: 'Did nandana gain weight', ans: false),
    Quiz(qus: 'Does nandana have an iphone', ans: false),
    Quiz(qus: 'Is nandana a drug addict', ans: false),
    Quiz(qus: 'Does nandana dance well', ans: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Center(
            child: Text(
              Questions[index].qus,

              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25.0,
              ),
            ),
          ),
          TextButton(onPressed: (){setState(() {
            nextQus();
          });}, child: Text('true')),
          TextButton(onPressed: (){setState(() {
            nextQus();

          });}, child: Text('false')),
        ],
      ),
    );
  }
}
