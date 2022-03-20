import 'package:flutter/material.dart';
import 'package:lab11_ex3/quiz_info.dart';
import 'package:lab11_ex3/restart_page.dart';
import 'home_page.dart';

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
        '/restart': (context) => const Restart()
      },
    );
  }
}
