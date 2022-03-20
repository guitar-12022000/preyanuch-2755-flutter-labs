import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textInput({controller, hint, prefixIcon, suffixIcon}) {
  return TextFormField(
      obscureText: true,
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
          prefixIcon: Icon(
            prefixIcon,
            color: Color.fromRGBO(16, 100, 93, 1),
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Color.fromRGBO(16, 100, 93, 1),
          )));
}
