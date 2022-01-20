import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: buildSuggestion(),
      );
  }

Widget _buildRow(WordPir pair) {
    return ListTile(title: Text(pair.asPasca))
}
}
