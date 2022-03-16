import 'package:flutter/material.dart';

import 'package:lab9_fixed/app_screens/portal_display.dart';
import 'package:lab9_fixed/app_screens/state_button.dart';
import 'landscape_display.dart';

//Ex3
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool activeButton = false;

  void buttonTapChanged(bool value) {
    setState(() {
      activeButton = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildPortalDisplay();
          } else {
            return _buildlandScapeDisplay();
          }
        },
      ),
    );
  }
}

Widget _buildlandScapeDisplay() {
  return const LandscapeDisplay();
}

Widget _buildPortalDisplay() {
  return const PortalDisplay();
}

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
