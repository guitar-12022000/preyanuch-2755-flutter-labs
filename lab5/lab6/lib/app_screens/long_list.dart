import 'package:flutter/material.dart';
import 'package:lab6/app_screens/fab_demo.dart';

List<String> getListElements() {
  var items = List<String>.generate(30, (counter) => "Problem $counter");
  return items;
}

@override
Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    if (index.isOdd) {
      return ListTile(
        leading: const Icon(Icons.arrow_right),
        title: Text("Problem $index"),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Problem $index is selected'),
          ),
        ),
      );
    } else {
      return ListTile(
        leading: const Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        trailing: const Icon(Icons.star),
        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Problem $index is my favorite'),
          ),
        ),
      );
    }
  });
  return listView;
}
