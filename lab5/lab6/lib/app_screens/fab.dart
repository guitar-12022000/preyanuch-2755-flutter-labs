// import 'package:flutter/material.dart';
// import 'package:lab6/app_screens/long_list.dart';
//
// class FABDemo extends StatefulWidget {
//   const FABDemo({Key? key}) : super(key: key);
//   @override
//   _FABDemoState createState() => _FABDemoState();
// }
//
// class _FABDemoState extends State<FABDemo> {
//   int count = 30;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Floating Action Demo")),
//       body: getListView(count),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         tooltip: "Want to increase the number of problem to $count",
//         onPressed: () {
//           var sn = SnackBar(
//             content: Text("$count"),
//             action: SnackBarAction(
//               label: "undo",
//               onPressed: () {
//                 debugPrint("was tapped");
//               },
//             ),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(sn);
//           setState(() {
//             count++;
//           });
//         },
//       ),
//     );
//   }
// }
