import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_10/widgets/options_answer.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key, required this.num, required this.info})
      : super(key: key);
  final int num;
  final Map<dynamic, dynamic> info;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late String name;
  late String title;
  late String imgUrl;
  late List<String> options;
  late String ans;

  bool previous = false;
  Widget? nextPresident;

  @override
  void initState() {
    super.initState();
    name = widget.info[widget.num]["name"];
    title = widget.info[widget.num]["title"];
    imgUrl = widget.info[widget.num]["imgUrl"];
    options = widget.info[widget.num]["options"];
    ans = widget.info[widget.num]["ans"];

    if (widget.num > 1 && widget.num <= widget.info.length) {
      previous = true;
    }
    if (widget.num < widget.info.length) {
      nextPresident = Quiz(num: widget.num + 1, info: widget.info);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 25, color: Colors.orange),
                ),
              ),
            ),
            Expanded(
              child: Image(
                image: NetworkImage(imgUrl),
              ),
            ),
            Expanded(child: OptionAnswer(options: options, ans: ans)),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: previous,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Previous'),
                    )),
                Visibility(
                    visible: nextPresident != null,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  nextPresident ?? Container())),
                      child: const Text(("Next")),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
