import 'package:flutter/material.dart';

import '../jason_object/jason_object_ex2.dart';

class ListItem extends StatelessWidget {
  final Albums item;
  const ListItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.id.toString(),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            item.title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
