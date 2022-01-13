import 'package:flutter/material.dart';

class ImageGuitar extends StatelessWidget {
  const ImageGuitar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/guitar.jpeg");
    Image image = Image(image: assetImage, width: 300, height: 300);
    return Center(child: image);
  }
}
