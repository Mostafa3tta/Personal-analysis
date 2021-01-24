import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function r;
  final int totalScore;

  const Result(this.r, this.totalScore);

  String get resultPhrase {
    String resultText;
    if (totalScore > 60)
      resultText = "شخصية مستبدة أو مثيرة للإعجاب لكن ليست محل ثقة";
    else if (totalScore <= 60 && totalScore > 51)
      resultText = "قيادية بالفطرة";
    else if (totalScore <= 50 && totalScore > 41)
      resultText = "شخصيه حيوية ومفعمة بالنشاط";
    else if (totalScore <= 40 && totalScore > 31)
      resultText = "شخصيه حساسة وحذرة وموهوبة";
    else if (totalScore <= 30 && totalScore > 21)
      resultText = "شخصيه مجتهدة لكن مترعة ,ممله وعنيده";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "💜💪 خلصت الاختبار",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          Text(
            "النتيجه هي $totalScore",
            style: TextStyle(fontSize: 20, color: b),
            textAlign: TextAlign.center,
          ),
          Text(resultPhrase ,style: TextStyle(fontSize: 20 ,color: Colors.red , fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "ابدأ من جديد",
              style: TextStyle(fontSize: 30, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            onPressed: r,
          ),
          Text(
            "Be Smile 😌 ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: b),
          ),
          Text(
            "Be ambitious ♥️ ",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: b),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("By : Mostafa 3Tta" , style: TextStyle(fontSize: 20 , fontWeight:  FontWeight.bold),),
            highlightElevation: 50,
            disabledTextColor: b,
            disabledColor: Colors.deepPurpleAccent,
            onPressed: null,
          )
        ],

      ),

    );
  }
}
