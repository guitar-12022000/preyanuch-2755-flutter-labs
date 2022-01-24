import 'package:flutter/material.dart';
import 'package:lab5/app_screens/submit_button.dart';

import 'image_guitar.dart';

class Exercise7 extends StatelessWidget {
  const Exercise7({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
        // margin: const EdgeInsets.only(bottom: 10.0),
        alignment: Alignment.center,
        color: Colors.tealAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 25.0),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Text(
                      'Preyanuch Phutsay   ',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25.0,
                          fontFamily: 'Prompt',
                          color: Colors.indigoAccent),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '623040275-5',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25.0,
                          fontFamily: 'Prompt',
                          color: Colors.indigoAccent),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: const <Widget>[
                  Expanded(
                    child: Text(
                      'Photo Credit',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25.0,
                          fontFamily: 'Prompt',
                          color: Colors.deepPurpleAccent),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'MyFriend',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25.0,
                          fontFamily: 'Prompt',
                          color: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              ),
            ),
            const ImageGuitar(),
            const SubmitButton(),
          ],
        ),
      ),
    );
  }
}
