import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surgery/widgets/btn_widget.dart';

import '../widgets/header.dart';
import '../widgets/text_input.dart';

class KkuRegPage extends StatefulWidget {
  const KkuRegPage({Key? key}) : super(key: key);

  @override
  State<KkuRegPage> createState() => _KkuRegPageState();
}

class _KkuRegPageState extends State<KkuRegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: Column(
          children: <Widget>[
            Header(containerSize: 0.3, headerText: "ลงทะเบียน ด้วย KKU Mail"),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: textInput(
                                hint: 'ชื่อ', prefixIcon: Icons.person),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(child: textInput(hint: 'นามสกุล'))
                        ],
                      ),
                      Expanded(
                        child: Center(
                          child: ButtonWidget(
                            btnText: 'ลงทะเบียน',
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
