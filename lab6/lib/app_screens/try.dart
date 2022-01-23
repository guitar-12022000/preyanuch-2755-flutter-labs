// import 'package:flutter/material.dart';
// import 'package:lab6/app_screens/fab_demo.dart';
//
// List<String> getListElements() {
//   var items = List<String>.generate(30, (counter) => "Problem $counter");
//   return items;
// }
//
// Widget getListView(int count) {
//   var listItems = getListElements();
//   var listView = ListView.builder(itemBuilder: (context, index) {
//     if (index.isOdd) {
//
//       return ListTile(
//         leading: const Icon(Icons.arrow_right),
//         title: Text("listItems[index]"),
//         onTap: () => ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('${listItems[index]} is my favorite'),
//           ),
//         ),
//       );
//     } else {
//       return ListTile(
//         leading: const Icon(Icons.arrow_right),
//         title: Text(listItems[index]),
//         trailing: const Icon(Icons.star),
//         onTap: () => ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('${listItems[index]} is selected'),
//           ),
//         ),
//       );
//     }
//   });
//   return listView;
// }
//
// import 'package:flutter/material.dart';
//
// void main() => runApp(Try());
//
// class Try extends StatelessWidget {
//   // This widget is the root
//   // of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//         title: "ListView.builder",
//         theme: new ThemeData(primarySwatch: Colors.green),
//         debugShowCheckedModeBanner: false,
//         home: new ListViewBuilder());
//   }
}
//
// class ListViewBuilder extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("ListView.builder")),
//       body: ListView.builder(
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//                 leading: Icon(Icons.list),
//                 trailing: const Text(
//                   "GFG",
//                   style: TextStyle(color: Colors.green, fontSize: 15),
//                 ),
//                 title: Text("List item $index"));
//           }),
//     );
//   }
// }

//
// // LONGLIST
// import 'package:flutter/material.dart';
// import 'package:lab6/app_screens/fab_demo.dart';
//
// List<String> getListElements() {
//   var items = List<String>.generate(30, (counter) => "Problem $counter");
//   return items;
// }
//
// @override
// Widget getListView(int count) {
//   var listItems = getListElements();
//   var listView = ListView.builder(itemBuilder: (context, index) {
//     if (index.isOdd) {
//       return ListTile(
//         leading: const Icon(Icons.arrow_right),
//         title: Text("$index"),
//         onTap: () => ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('$index is my favorite'),
//           ),
//         ),
//       );
//     } else {
//       return ListTile(
//         leading: const Icon(Icons.arrow_right),
//         title: Text(listItems[index]),
//         trailing: const Icon(Icons.star),
//         onTap: () => ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('${listItems[index]} is selected'),
//           ),
//         ),
//       );
//     }
//   });
//   return listView;
// }

