import 'package:flutter/material.dart';

import 'image_location.dart';
import 'location.dart';

class PortalDisplay extends StatelessWidget {
  const PortalDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: const [
              Padding(padding: EdgeInsets.all(5)),
              Center(
                child: Text("Where is this place?",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        color: Colors.red)),
              )
            ],
          ),
          const Center(
            child: ImageLocation(),
          ),
          Expanded(
            child: newWidget("sea", "mountain", "river", "forest", "sea"),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
