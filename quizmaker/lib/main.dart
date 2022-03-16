import 'package:flutter/material.dart';
import 'package:quizmaker/views/sigin.dart';
import 'package:quizmaker/views/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SignUp());
  }
}
//   class FirstPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text('Sccaffold Widget'),
//         backgroundColor: Colors.orange,
//       ),
//       body: Center(
//         child: Container(
//           child: Text('This is the first page'),
//         ),
//       ),
//       // floatingActionButton: ,
//       // bottomNavigationBar: ,
//       // persistentFooterButtons: [],
//     );
//   }
// }}
