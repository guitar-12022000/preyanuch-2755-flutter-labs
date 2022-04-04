import 'package:flutter/material.dart';
import 'package:lab13/exercise/fetch_from_internet_ex2.dart';

class Exercise2 extends StatelessWidget {
  const Exercise2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const FetchAlbum(),
    );
  }
}
