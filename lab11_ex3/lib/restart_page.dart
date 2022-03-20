import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Restart extends StatefulWidget {
  const Restart({Key? key}) : super(key: key);

  @override
  State<Restart> createState() => _RestartState();
}

class _RestartState extends State<Restart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
          child: Text("Restart"),
        ),
      ),
    );
  }
}
