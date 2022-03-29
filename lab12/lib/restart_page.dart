import 'package:flutter/material.dart';
import 'package:lab12/provider/getscore_screen_provider.dart';
import 'package:provider/provider.dart';

class Restart extends StatefulWidget {
  const Restart({Key? key}) : super(key: key);

  @override
  State<Restart> createState() => _RestartState();
}

class _RestartState extends State<Restart> {
  void pressButton(BuildContext context) {
    setState(() {
      Navigator.of(context).pushNamed('/');
    });
    getPoint(context);
  }

  void getPoint(BuildContext context) {
    final score = Provider.of<GetScoreScreenProvider>(context, listen: false);
    score.resetScore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<GetScoreScreenProvider>(
                builder: (context, provider, child) {
                  return Text("Your Score is ${provider.getScore}");
                },
              ),
              ElevatedButton(
                onPressed: () {
                  pressButton(context);
                },
                child: const Text("Restart"),
              ),
            ]),
      ),
    );
  }
}
