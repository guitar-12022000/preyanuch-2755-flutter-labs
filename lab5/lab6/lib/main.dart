import 'package:flutter/material.dart';
// import './app_screens/basic_listview.dart';
// import './app_screens/try.dart';
// import './app_screens/long_list.dart';
import './app_screens/fab_demo.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Basic List View Demo",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Widgets Exercise"),
//         ),
//         body: getListView(),
//       ),
//     ),
//   );
// }
// }
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Basic List View Demo",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Widgets Exercise"),
//         ),
//         body: getListView(),
//         floatingActionButton: const FloatingActionButton(
//           onPressed: null,
//           child: Icon(Icons.add),
//           tooltip: "Add OneMore Items",
//         ),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "ListView Builder",
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Widgets Exercise"),
//           ),
//           body: getListView()),
//     ),
//   );
// }

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic List View Demo",
      home: Scaffold(
        body: FABDemo(),
      ),
    ),
  );
}
