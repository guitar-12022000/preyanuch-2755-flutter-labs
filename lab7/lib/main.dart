import 'package:flutter/material.dart';
import 'package:lab7/app_screens/ex1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Flutter Exercise by Preyanuch Phutsay'),
        ),
        body: const Exercise1(), //***Exercise1
      ),
    );
  }
}
