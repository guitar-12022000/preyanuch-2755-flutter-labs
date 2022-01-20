import 'package:flutter/material.dart';

class ImageLocation extends StatelessWidget {
  const ImageLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/mountain.jpg");
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}
