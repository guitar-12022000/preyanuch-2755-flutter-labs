import 'package:flutter/material.dart';

class StateButtonSnack extends StatefulWidget {
  final String option;
  final Color color;
  final String ans;

  const StateButtonSnack(
      {Key? key, required this.option, required this.color, required this.ans})
      : super(key: key);

  @override
  State<StateButtonSnack> createState() => _StateButtonSnackState();
}

class _StateButtonSnackState extends State<StateButtonSnack> {
  bool colorButton = false;

  void tapButton() {
    Color buttonColor = Colors.green;
    setState(() {
      colorButton = true;
      buttonColor = Colors.red;
    });
  }

  void tapButtonFalse() {
    Color buttonColor = Colors.green;
    setState(() {
      colorButton = true;
      buttonColor = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.red;
    if (widget.option == widget.ans) {
      buttonColor = Colors.green;
    }
    return GestureDetector(
      onTap: () {
        if (widget.option == widget.ans) {
          const snackBar = SnackBar(content: Text('1'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          tapButton();
        } else {
          const snackBar = SnackBar(content: Text('0'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          tapButtonFalse();
        }
      },
      child: Container(
        height: 50,
        width: 170,
        color: colorButton ? buttonColor : widget.color,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            widget.option,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
