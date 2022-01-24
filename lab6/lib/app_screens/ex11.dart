//Ex11
import 'package:flutter/material.dart';
import 'package:lab6/app_screens/long_list_ex11.dart';

class FABSnLongL extends StatefulWidget {
  const FABSnLongL({Key? key}) : super(key: key);

  @override
  _FABState createState() => _FABState();
}

class _FABState extends State<FABSnLongL> {
  int count = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListViewForAll(count),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        tooltip: "Want to increase the number of problems to",
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Current number problems $count")));
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
