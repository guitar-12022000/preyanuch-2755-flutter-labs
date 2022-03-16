import 'package:flutter/material.dart';

class RatingTap extends StatefulWidget {
  const RatingTap({Key? key}) : super(key: key);

  @override
  _RatingTapState createState() => _RatingTapState();
}

class _RatingTapState extends State<RatingTap> {
  bool _isFavorited = true;

  @override
  Widget build(BuildContext context) {
    return _buildStar();
  }

  Widget _buildStar() {
    return IconButton(
      icon: (_isFavorited
          ? const Icon(Icons.star) //state1
          : const Icon(Icons.star_border)), //state2
      color: Colors.blueAccent,
      onPressed: _toggleFavorite,
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}
