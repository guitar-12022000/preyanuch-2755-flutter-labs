import 'package:flutter/material.dart';
import 'package:lab6/app_screens/long_list.dart';

class FABDemo extends StatefulWidget {
  @override
  _FABDemoState createState() => _FABDemoState();
}

class _FABDemoState extends State<FABDemo> {
  var count = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text("ทำไมไม่รเทิร์นต่ากลับบ")),
      body: getListView(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content:
                  Text("Want to increase the number of problem to $count")));
          setState(() {
            count++;
          }listView());
        },
      ),
    );
  }
}
