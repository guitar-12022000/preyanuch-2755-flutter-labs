import 'package:flutter/material.dart';
import 'image_guitar.dart';

class Exercise6 extends StatelessWidget {
  const Exercise6({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(left: 30.0, top: 10.0, bottom: 50),
        margin: const EdgeInsets.only(bottom: 10.0),
        alignment: Alignment.center,
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    'Preyanuch Phutsay',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Prompt',
                        color: Colors.white),
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
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    'Photo Credit',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
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
                        fontSize: 20.0,
                        fontFamily: 'Prompt',
                        color: Colors.deepPurpleAccent),
                  ),
                ),
              ],
            ),
            const ImageGuitar(),
          ],
        ),
      ),
    );
  }
}
