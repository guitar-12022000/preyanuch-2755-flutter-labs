import 'package:flutter/material.dart';

import 'image_location.dart';
import 'choice.dart';

class ResponsiveEx2 extends StatelessWidget {
  const ResponsiveEx2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _landScapeDisplay();
          } else {
            return _portraitDisplay();
          }
        },
      ),
    );
  }
}

Widget _landScapeDisplay() {
  return Center(
    child: Container(
      padding: const EdgeInsets.only(top: 20.0),
      margin: const EdgeInsets.only(top: 10.0),
      alignment: Alignment.center,
      child: Column(children: [
        _buildQuestion(),
        Expanded(child: _buildImage()),
        Expanded(child: _buildChoice())
      ]),
    ),
  );
}

Widget _portraitDisplay() {
  return Center(
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 30.0),
      // margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildQuestion(),
          _buildImage(),
          Expanded(child: _buildChoice())
        ],
      ),
    ),
  );
}

Widget _buildQuestion() {
  return const Text(
    'Where is this picture?',
    style: TextStyle(
        decoration: TextDecoration.none, fontSize: 30.0, color: Colors.red),
  );
}

Widget _buildImage() {
  return Container(
      padding: const EdgeInsets.only(left: 30, right: 30),
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      child: const ImageLocation());
}

Widget _buildChoice() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
  );
}
