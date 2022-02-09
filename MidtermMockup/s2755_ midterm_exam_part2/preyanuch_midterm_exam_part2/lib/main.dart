import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Number extends StatelessWidget {
  final String num;
  const Number(this.num);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DecoratedBox(
      decoration: const BoxDecoration(color: Colors.blueAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(num),
      ),
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Preyanuch Midterm Exam Part 2',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Preyanuch Midterm Exam Part 2'),
            ),
            body: Center(
              child: Row(children: [
                Container(
                  padding: const EdgeInsets.only(top: 100, left: 100),
                  child: Column(children: const [
                    Number('1'),
                    SizedBox(height: 8.0),
                    Number('2'),
                    SizedBox(height: 8.0),
                    Number('3'),
                    SizedBox(height: 8.0),
                    Number('4'),
                    SizedBox(height: 8.0),
                    SizedBox(width: 8.0),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100, left: 50),
                  child: Column(children: [
                    Image.network(
                      'https://www.planetware.com/wpimages/2020/03/world-most-visited-cities-paris-france.jpg',
                      width: 120.0,
                      height: 100.0,
                    ),
                    Image.network(
                      'https://www.planetware.com/wpimages/2020/03/world-most-visited-cities-new-york-city.jpg',
                      width: 120.0,
                      height: 100.0,
                    ),
                    Image.network(
                      'https://www.planetware.com/wpimages/2020/03/world-most-visited-cities-london-england.jpg',
                      width: 120.0,
                      height: 100.0,
                    ),
                    Image.network(
                      'https://www.planetware.com/wpimages/2020/03/world-most-visited-cities-bangkok-thailand.jpg',
                      width: 120.0,
                      height: 100.0,
                    )
                  ]),
                )
              ]),
            )));
  }
}
