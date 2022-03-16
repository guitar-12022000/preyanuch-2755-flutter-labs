import 'package:flutter/material.dart';
import 'package:lab11/home_page.dart';
import 'package:lab11/quiz_info.dart';
import 'package:lab11/widgets/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
    '/quiz': (context) => const QuizInfo(),
      },
    );
  }
}
