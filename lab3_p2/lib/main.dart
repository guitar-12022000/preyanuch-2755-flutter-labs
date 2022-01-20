import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(title: const Text('My Favorite Quote')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 50, bottom: 5),
              child: const Image(
                image: NetworkImage('https://animemotivation.com/'
                    'wp-content/uploads/2019/03/tetsuya-kuroko-quotes-5.jpg'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black87,
                  ),
                  // borderRadius: const BorderRadius.vertical(),
                  color: Colors.greenAccent,
                ),
                child: const Text(
                  "Tetsuya  Kuroko",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
