import 'package:flutter/material.dart';

class ImageTemple extends StatelessWidget {
  const ImageTemple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/temple.jpeg");
    Image image = Image(image: assetImage, width: 300, height: 300);
    return Center(child: image);
  }
}
