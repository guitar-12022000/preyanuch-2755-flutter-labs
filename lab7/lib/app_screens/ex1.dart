import 'package:flutter/material.dart';
import 'package:lab7/app_screens/choice.dart';
import 'package:lab7/app_screens/image_location.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({Key? key}) : super(key: key);

  @override
  _Ex1State createState() => _Ex1State();
}

class _Ex1State extends State<Exercise1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 20.0),
        // margin: const EdgeInsets.only(bottom: 10.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Where is this picture?',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration
                      .none, //If don't have this code it will have underline
                  fontSize: 30.0,
                  color: Colors.red),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              margin: const EdgeInsets.only(top: 50, bottom: 100),
              child: const ImageLocation(),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Choice('Khon Kaen University', Colors.yellowAccent),
                        Choice('Chiang Mai University', Colors.purple),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const <Widget>[
                        Choice('Chulalongkorn University', Colors.pinkAccent),
                        Choice('Mahidol University', Colors.blueAccent),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
