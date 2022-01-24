import 'package:flutter/material.dart';
import 'app_screens/ex11.dart';
import 'app_screens/fab_state.dart';
import 'app_screens/long_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widgets Exercise"),
        ),
        // body: getListView(30), //***Exercise9
        // body: const FABState(), //***Exercise10
        body: const FABSnLongL(), //***Exercise11
      ),
    );
  }
}
