import 'package:flutter/material.dart';
import 'checkans_state.dart';

Widget newWidget(
        option1, option2, option3, option4, ans, Widget? nextQuestion) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rowWidget(option1, option2, Colors.yellowAccent, Colors.purple, ans,
            nextQuestion),
        rowWidget(option3, option4, Colors.pinkAccent, Colors.blueAccent, ans,
            nextQuestion)
      ],
    );
Widget rowWidget(option1, option2, Color color1, Color color2, ans,
        Widget? nextQuestion) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StateButton(
            option: option1,
            ans: ans,
            color: color1,
            nextQuestion: nextQuestion),
        StateButton(
            option: option2,
            color: color2,
            ans: ans,
            nextQuestion: nextQuestion)
      ],
    );
