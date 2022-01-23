import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  const TextStyles({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.lightBlueAccent,
        // width: 200,
        // height: 100,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        child: const Text(
          "ปรียานุช พุฒซ้าย",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration
                  .none, //If don't have this code it will have underline
              fontSize: 20.0,
              fontFamily: 'Prompt',
              color: Colors.white),
        ),
      ),
    );
  }
}
