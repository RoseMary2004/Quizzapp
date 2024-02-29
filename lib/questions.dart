import 'package:flutter/material.dart';
import 'package:quizzapp/questions.dart';
import 'package:quizzapp/ques.dart';

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
    Quiz(qus: 'colorblind people can see color', ans: false),
    Quiz(qus: 'Does nandana eat a lot of food', ans: true),
    Quiz(qus: 'color of the teeth black', ans: false),
    Quiz(qus: 'Does nandana have an iphone', ans: false),
    Quiz(qus: 'Is fish a non veg', ans: false),
    Quiz(qus: 'Is apple a fruit', ans: true),
  ];
  void ans(bool check){

    print ('check');

  }
  void answer(bool check)
  {
    if(check==Questions[index].ans)
    result='correct answer';
    else{
      result='wrong answer';

  }
  }
  String result="correct answer";
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
            answer(true);
            nextQus();
          });},
              child: Text('true')),
          TextButton(onPressed: (){setState(() {
            answer(false);
            nextQus();

          });}, child: Text('false')),
          Text(result),
        ],
      ),
    );
  }
}
