import 'dart:ui';
import 'package:quiz_app/Quiz.dart';
import 'package:quiz_app/Result.dart';
import 'Answeer.dart';
import 'Question.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
Color w = Colors.white;
Color b=Colors.black;
class _MyAppState extends State<MyApp> {

  bool isSwitich=false;
  int _totalScore = 0;
  int _questionIndex = 0;
  int numScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      numScore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    numScore = score;
    setState(() {
      _questionIndex++;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'عندما ترغب بالاسترخاء، فستكون طريقة جلوسك ؟',
      'answers': [
        {"text": "تجلس مع ثني الركبتين جنبا إلى جنب", "Score": 4},
        {"text": "مع تقاطع القدمين, إحداهما فوق الأخرى", "Score": 6},
        {"text": "مع مد الرجلين بشكل مستقيم ", "Score": 2},
        {"text": "مع ثني رجل واحدة تحتك", "Score": 1},
      ]
    },
    {
      'questionText': 'عند مقاطعة الآخرين لك أثناء تركيزك الشديد، فإنك',
      'answers': [
        {"text": " تشعر بالغيظ الشديد", "Score": 2},
        {"text": "تشعر بحالة وسط بين الحالتين السابقتين", "Score": 4},
        {"text": "ترحب بالمقاطعة من أجل أخذ قسط من الراحة ", "Score": 6},
      ]
    },
    {
      'questionText': 'ما هو الوقت الذي تشعر فيه بأنك في أفضل حالاتك ؟',
      'answers': [
        {"text": " في الصباح الباكر", "Score": 2},
        {"text": "في الظهيرة وبداية المساء", "Score": 4},
      ]
    },
    {
      'questionText': 'ما هو اللون المُفضل لك',
      'answers': [
        {"text": "  الأحمر، أو البرتقالي ", "Score": 6},
        {"text": " الأسود", "Score": 7},
        {"text": "الأصفر، أو الأزرق الفاتح", "Score": 5},
        {"text": " الأخضر", "Score": 4},
        {"text": "الأزرق الغامق، أو الأرجواني", "Score": 3},
        {"text": " الأبيض", "Score": 2},
        {"text": " البني، أو الرمادي", "Score": 1},
      ]
    },
    {
      'questionText': 'كيف تسير على قدميك, أو ما هو شكل مشيتك؟',
      'answers': [
        {"text": "  تمشي بشكل سريع وخطوات طويلة", "Score": 6},
        {"text": "بشكل سريع وخطوات قصيرة", "Score": 4},
        {
          "text": "تتحرك بسرعة قليلة مع رفع الرأس، والنظر إلى وجوه الناس",
          "Score": 7
        },
        {"text": "بسرعة قليلة مع طأطأة الرأس نحو الأسفل", "Score": 2},
        {"text": "تتحرك بشكل بطيء جدا ", "Score": 1},
      ]
    },
    {
      'questionText': 'عندما تتحدث مع الآخرين',
      'answers': [
        {"text": " تقف طاوي اليدين", "Score": 4},
        {"text": " تقف ويداك مكتوفتان", "Score": 2},
        {"text": "تقف مع وضع يديك داخل الجيب", "Score": 5},
        {"text": "تلمس الشخص المخاطب، أو تدفعه ", "Score": 7},
        {
          "text": "تحريك اليدين على عدد من أجزاء جسمك، مثل: لمس الشعر أو الذقن",
          "Score": 6
        },
      ]
    },
    {
      'questionText': 'عند الاستعداد للنوم، تكون طريقة استلقاءك  ',
      'answers': [
        {"text": "التمدد على الظهر", "Score": 7},
        {"text": " الانكفاء على البطن والوجه باتجاه الأرض", "Score": 6},
        {"text": " الاستلقاء على أحد الجانبين مع انحناء بسيط ", "Score": 4},
        {"text": "وضع الرأس على إحدى اليدين", "Score": 2},
        {"text": "إخفاء الرأس أسفل الغطاء ", "Score": 1},
      ]
    },
    {
      'questionText': 'الحلم الذي يتكرر معك',
      'answers': [
        {"text": " القتال أو المقاومة", "Score": 2},
        {"text": "السقوط من مكان مرتفع ", "Score": 4},
        {"text": " البحث عن شخص أو شيء ", "Score": 3},
        {"text": " الطيران، أو الطفو على الماء", "Score": 5},
        {"text": " عدم الحلم بشيء عند النوم", "Score": 1},
      ]
    },
    {
      'questionText': 'عندما تسمع شيء مضحك، تضحك',
      'answers': [
        {"text": "  بشكل ممتن", "Score": 4},
        {"text": "ولكن ليست بصوت مرتفع ", "Score": 3},
        {"text": "  بشكل هادئ بينك وبين نفسك ", "Score": 5},
        {"text": " بشكل خجول", "Score": 2},
      ]
    },
    {
      'questionText': 'عندما تدخل إلى حفلة اجتماعية، تدخل',
      'answers': [
        {"text": "  بشكل صاخب ملفت لأنظار الآخرين", "Score": 6},
        {"text": "بشكل هادئ، مع الالتفات للبحث عن شخص تعرفه  ", "Score": 4},
        {"text": "  بشكل هادئ، مع محاولة عدم لفت أنظار الآخرين ", "Score": 2},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("اكتشف شخصيتك" ,style: TextStyle(color: w , fontWeight: FontWeight.bold),),
          actions: [
            Switch(
              value: isSwitich,
              onChanged: (value){
                setState(() {
                  isSwitich = value;
                  if (isSwitich==true) {
                    b = Colors.white;
                    w = Colors.black;
                  }
                  else {
                    w = Colors.white;
                    b = Colors.black;
                  }

                }
                );
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            )
          ],
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(resetQuiz, _totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back , color: w , size: 30,),
          onPressed: () {
            setState(() {
              _totalScore -= numScore;
              _questionIndex > 0 ? _questionIndex-- : null;
            });
          },
        ),
      ),
    );
  }
}
