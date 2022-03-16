import 'package:flutter/material.dart';

class ImageLocation extends StatelessWidget {
  const ImageLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/sea.jpg");
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}
