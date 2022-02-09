import 'package:flutter/material.dart';
import 'package:lab8/app_screens/faculty_list.dart';
import 'package:lab8/app_screens/responsive_ex1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      // home: const FacultyList(), //Ex1
      home: const ResponsiveEx1(), //Ex2
      debugShowCheckedModeBanner: false,
    );
  }
}
