import 'package:flutter/material.dart';
import 'checkans_state.dart';

Widget newWidget(option1, option2, option3, option4, ans) => Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        rowWidget(option1, option2, Colors.yellowAccent, Colors.purple, ans),
        rowWidget(option3, option4, Colors.pinkAccent, Colors.blueAccent, ans)
      ],
    );
Widget rowWidget(option1, option2, Color color1, Color color2, ans) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StateButton(option: option1, ans: ans, color: color1),
        StateButton(option: option2, color: color2, ans: ans)
      ],
    );
