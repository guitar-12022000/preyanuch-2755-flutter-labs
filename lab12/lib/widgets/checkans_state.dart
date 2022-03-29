import 'package:flutter/material.dart';
import 'package:lab12/provider/getscore_screen_provider.dart';
import 'package:provider/provider.dart';

import '../restart_page.dart';

class StateButton extends StatefulWidget {
  final String option;
  final Color color;
  final String ans;
  final Widget? nextQuestion;

  const StateButton({
    Key? key,
    required this.option,
    required this.color,
    required this.ans,
    required this.nextQuestion,
  }) : super(key: key);

  @override
  State<StateButton> createState() => _StateButtonState();
}

class _StateButtonState extends State<StateButton> {
  bool colorButton = false;
  bool checkAns = false;

  void tapButton(BuildContext context) {
    setState(() {
      colorButton = true;
    });
    getPoint(context);
    _showDialogTrueFalse(context);
  }

  void getPoint(BuildContext context) {
    final score = Provider.of<GetScoreScreenProvider>(context, listen: false);
    if (widget.option == widget.ans) {
      score.increseScore();
    }
  }

  void _showDialogTrueFalse(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text("Score!"),
              content: Text(checkAns
                  ? "congrats, You get 1 point"
                  : "sorry, you miss it!"),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            widget.nextQuestion ?? const Restart()));
                  },
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Colors.red;
    if (widget.option == widget.ans) {
      buttonColor = Colors.green;
      checkAns = true;
    }
    return GestureDetector(
      onTap: () {
        tapButton(context);
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
