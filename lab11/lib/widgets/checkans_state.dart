import 'package:flutter/material.dart';

class StateButton extends StatefulWidget {
  final String option;
  final Color color;
  final String ans;

  const StateButton(
      {Key? key, required this.option, required this.color, required this.ans})
      : super(key: key);

  @override
  State<StateButton> createState() => _StateButtonState();
}

class _StateButtonState extends State<StateButton> {
  bool colorButton = false;

  void tapButton() {
    setState(() {
      colorButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.red;
    if (widget.option == widget.ans) {
      buttonColor = Colors.green;
    }
    return GestureDetector(
      onTap: tapButton,
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
