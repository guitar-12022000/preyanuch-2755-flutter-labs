import 'package:flutter/cupertino.dart';
import 'package:lab_10/widgets/quiz.dart';

class QuizInfo extends StatefulWidget {
  const QuizInfo({Key? key}) : super(key: key);

  @override
  State<QuizInfo> createState() => _QuizInfoState();
}

class _QuizInfoState extends State<QuizInfo> {
  var prezInfo = {
    1: {
      "name": "Where is this place ?",
      "title": "Question 1",
      "imgUrl":
          "https://www.madamagazine.com/wp-content/uploads/2017/05/Emerald-Sea-3.jpg",
      "options": ["The sea", "The mountain", "The Averest", "The Sahara"],
      "ans": "The sea"
    },
    2: {
      "name": "What is this animal ?",
      "title": "Question 2",
      "imgUrl":
          "https://th.bing.com/th/id/R.58ab1928f8d0d4dd0902a9d1d8811409?rik=9NHZnamseBAFvA&pid=ImgRaw&r=0",
      "options": ["Shark", "Dolphin", "Tiger", "Bird"],
      "ans": "Shark"
    },
    3: {
      "name": "What is this animal ?",
      "title": "Question 3",
      "imgUrl":
          "https://tse3.mm.bing.net/th?id=OIP.z1JeE35ohPk0UT875bAtAgHaEo&pid=Api&P=0&w=286&h=179",
      "options": ["Tiger", "Dolphin", "Turtle", "Bird"],
      "ans": "Turtle"
    },
  };
  @override
  Widget build(BuildContext context) {
    return Quiz(num: 1, info: prezInfo);
  }
}
