import 'package:flutter/material.dart';
import 'package:lab12/provider/getscore_screen_provider.dart';
import 'package:lab12/quiz_info.dart';
import 'package:lab12/restart_page.dart';
import 'package:provider/provider.dart';

import 'home_pagae.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GetScoreScreenProvider>(
      create: (context) => GetScoreScreenProvider(),
      child: Builder(
        builder: (context) {
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
        },
      ),
    );

    // ),);
  }
}
