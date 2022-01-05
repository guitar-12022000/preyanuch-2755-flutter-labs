import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widgets Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widgets Demo'),
        ),
        body: Center(
          child: ItemCounter(),
        ),
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: (Text(
        '$count',
        style: TextStyle(fontSize: 40),
      )),
      onTap: () {
        setState(() {
          count++;
        });
      },
    );
  }
}
