import 'package:flutter/material.dart';

List<String> getListElements(int count) {
  var items = List<String>.generate(count, (counter) => "Item $counter");
  return items;
}

Widget getListViewForAll(int count) {
  var listItems = getListElements(count);

  var listViews = ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        if (index % 2 == 1) {
          index++;
          return ListTile(
              title: Text("Problem $index"),
              leading: const Icon(Icons.arrow_right),
              trailing: const Icon(Icons.star),
              onTap: () {
                final sn = SnackBar(
                    content: Text("Problem $index is my favorite"),
                    action: SnackBarAction(
                      label: "undo",
                      onPressed: () {
                        debugPrint('was tapped');
                      },
                    ));
                ScaffoldMessenger.of(context).showSnackBar(sn);
              });
        } else {
          index++;
          return ListTile(
              title: Text("Problem $index"),
              leading: const Icon(Icons.arrow_right),
              onTap: () {
                final sn = SnackBar(
                    content: Text("Problem $index is selected"),
                    action: SnackBarAction(
                      label: "undo",
                      onPressed: () {
                        debugPrint('was tapped');
                      },
                    ));
                ScaffoldMessenger.of(context).showSnackBar(sn);
              });
        }
      });
  return listViews;
}
