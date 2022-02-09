import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  const LikeButton({Key? key}) : super(key: key);

  void alertMsg(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text("Confirmation"),
      content: Text("Submitting Information"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.all(12),
          textStyle: const TextStyle(fontSize: 30),
        ),
        child: const Text(
          "Like",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onPressed: () => {
          alertMsg(context),
        },
      ),
    );
  }
}
