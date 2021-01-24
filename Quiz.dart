import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answeer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(this.question, this.questionIndex, this.answerQuestion);





  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(question[questionIndex]["questionText"]),
        ...(question[questionIndex]["answers"] as List<Map<String,Object>>)
            .map((answer) {
          return Answeer(()=> answerQuestion(answer["Score"]), answer["text"]);
        }).toList(),
      ],
    );
  }
}

