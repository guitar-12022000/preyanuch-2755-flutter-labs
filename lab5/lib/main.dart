import 'package:flutter/material.dart';
import 'package:lab5_part1/app_screens/submit_button.dart';
import './app_screens/text_styles.dart';
import './app_screens/exercise6.dart';
import './app_screens/exercise7.dart';
import './app_screens/basic_listview.dart';
// import './app_screens/try.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       title: "Name",
//       home: BasicListView(),
//     ),
//   );
// }
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Basic List View Demo",
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Widgets Exercise"),
        ),
        body: const Exercise7()),
  ));
}
