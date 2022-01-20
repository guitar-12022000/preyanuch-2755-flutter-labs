import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  final String choice;
  final Color color;
  const Choice(this.choice, this.color);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Container(
          alignment: Alignment.center,
          child: Text(choice,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
