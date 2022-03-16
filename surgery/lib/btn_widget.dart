import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  var btnText = "";
  var onClick;
  ButtonWidget({required this.btnText, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Color.fromRGBO(16, 103, 90, 1),
            borderRadius: BorderRadius.all(
              Radius.circular(3.0),
            )),
        alignment: Alignment.center,
        child: Text(
          btnText,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
