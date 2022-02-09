import 'package:flutter/material.dart';
import 'package:preyanuch_midterm_exam_part3/app_screens/greeting_button.dart';
import 'package:preyanuch_midterm_exam_part3/app_screens/like_button.dart';

class Athlete extends StatelessWidget {
  const Athlete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.yellow,
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 40),
            child: const Text(
              'Number of likes is 1.0',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: _buildStack(),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            child: _buildCard(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.black),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              children: const [GreetingButton(), LikeButton()],
            ),
          )
        ]),
      ),
    );
  }
}

Widget _buildStack() {
  return Stack(
    alignment: const Alignment(0.5, 0.6),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('images/nadal.jpg'),
        radius: 120,
      ),
      Container(
        decoration: const BoxDecoration(color: Colors.black),
        padding: const EdgeInsets.all(5),
        // margin: const EdgeInsets.only(top: ),
        child: const Text(
          'Rafael Nadal',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _buildCard() {
  return SizedBox(
    height: 140,
    child: Card(
      child: Column(
        children: const [
          ListTile(
            title: Text(
              "Tennis",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            leading: Icon(
              Icons.sports_tennis,
              color: Colors.deepOrange,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Spain',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/spain.png'),
              radius: 20,
            ),
          ),
        ],
      ),
    ),
  );
}
