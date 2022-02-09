import 'package:flutter/material.dart';

import 'app_scrrens/image.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(title: const Text('Local Image')),
        body: Center(
          child: Container(
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(
                      left: 50, right: 50, bottom: 170, top: 170),
                  color: Colors.lightBlueAccent,
                  child: const ImageTemple())),
        ),
      ),
    );
  }
}
