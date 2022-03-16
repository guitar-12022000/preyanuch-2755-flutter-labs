import 'package:flutter/material.dart';

import 'image_location.dart';
import 'location.dart';

class LandscapeDisplay extends StatefulWidget {
  const LandscapeDisplay({Key? key}) : super(key: key);

  @override
  _LandscapeDisplayState createState() => _LandscapeDisplayState();
}

class _LandscapeDisplayState extends State<LandscapeDisplay> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Layout Flutter Exercise By Preyanuch Phutsay'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: const [
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                  child: Text(
                    "Where is this place?",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        color: Colors.red),
                  ),
                )
              ],
            ),
            const Center(
              child: ImageLocation(),
            ),
            newWidget("sea", 'mountain', 'river', 'forest', 'sea')
          ],
        ));
  }
}
