import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
                padding: EdgeInsets.only(left: 0, top: 50, right: 0, bottom: 5),
                child: Image(
                  image: NetworkImage('https://animemotivation.com/'
                      'wp-content/uploads/2019/03/tetsuya-kuroko-quotes-5.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Tetsuya",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 25),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(12.0),
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Kuroko",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 25),
                        ),
                      ),
                    ]),
              ),
            ]),
      ),
    );
  }
}
