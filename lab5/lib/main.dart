import 'package:flutter/material.dart';
import 'package:lab5/app_screens/exercise6.dart';
import 'app_screens/basic_listview.dart' show BasicListView;
import 'app_screens/exercise7.dart';
import 'app_screens/text_styles.dart';

//
//Ex5,6,7
void main() {
  runApp(
    const MaterialApp(
      title: "Name",
      home: Exercise7(),
    ),
  );
}

// //Ex8
// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter Demo',
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text("Widgets Exercise"),
//       ),
//       body: const BasicListView(), //***Exercise11
//     ),
//   ));
// }
