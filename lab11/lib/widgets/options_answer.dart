import 'package:flutter/material.dart';
import 'options_layout.dart';

class OptionAnswer extends StatefulWidget {
  final List<String> options;
  final String ans;
  const OptionAnswer({
    Key? key,
    required this.ans,
    required this.options,
  }) : super(key: key);

  @override
  _OptionAnswerState createState() => _OptionAnswerState();
}

class _OptionAnswerState extends State<OptionAnswer> {
  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);
    // double width = queryData.size.width;
    // double height = queryData.size.height;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        newWidget(widget.options[0], widget.options[1], widget.options[2],
            widget.options[3], widget.ans),
      ],
    ));
  }
}
