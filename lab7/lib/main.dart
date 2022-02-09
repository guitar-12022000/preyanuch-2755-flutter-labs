import 'package:flutter/material.dart';
import 'package:lab7/app_screens/ex1.dart';

import 'app_screens/ex2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: Exercise2(), //***Exercise2
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Layout Flutter Exercise by Preyanuch'),
//         ),
//         body: const Exercise1(), //***Exercise1
//       ),
//     );
//   }
// }
