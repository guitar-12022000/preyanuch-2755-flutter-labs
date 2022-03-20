import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  var containerSize;
  final String headerText;

  Header({required this.containerSize, required this.headerText});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * containerSize,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(16, 103, 90, 1),
        ),
        child: Center(
          child: Text(
            headerText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
