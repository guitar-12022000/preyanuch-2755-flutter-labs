//Ex10

import 'package:flutter/material.dart';
import 'package:lab6/app_screens/long_list_for_fab.dart';

class FABState extends StatefulWidget {
  const FABState({Key? key}) : super(key: key);
  @override
  _FABState createState() => _FABState();
}

class _FABState extends State<FABState> {
  int count = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListViewForFab(count),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text("Want to increase the number of Problems to $count"),
            ),
          );
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
