import 'package:flutter/material.dart';
import 'app_screens/basic_listview.dart' show BasicListView;

// //Ex5,6,7
// void main() {
//   runApp(
//     const MaterialApp(
//       title: "Name",
//       home: Exercise7(),
//     ),
//   );
// }

//Ex8
void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Exercise"),
      ),
      body: const BasicListView(), //***Exercise11
    ),
  ));
}
