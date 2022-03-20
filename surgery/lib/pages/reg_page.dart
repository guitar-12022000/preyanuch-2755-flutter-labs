import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surgery/widgets/btn_widget.dart';

import '../widgets/header.dart';
import '../widgets/text_input.dart';

class RegPage extends StatefulWidget {
  const RegPage({Key? key}) : super(key: key);

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Header(containerSize: 0.25, headerText: "ลงทะเบียน"),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                              child: textInput(
                                  hint: 'ชื่อ', prefixIcon: Icons.person)),
                          SizedBox(width: 10.0),
                          Expanded(child: textInput(hint: 'นามสกุล'))
                        ],
                      ),
                      SizedBox(height: 10.0),
                      textInput(
                          hint: 'แผนก',
                          prefixIcon: Icons.local_fire_department),
                      SizedBox(height: 10.0),
                      textInput(hint: 'อีเมล', prefixIcon: Icons.email),
                      SizedBox(height: 10.0),
                      textInput(
                          hint: 'รหัสผ่าน',
                          prefixIcon: Icons.vpn_key,
                          suffixIcon: Icons.remove_red_eye),
                      SizedBox(height: 10.0),
                      textInput(
                          hint: 'รหัสผ่านอีกครั้ง',
                          prefixIcon: Icons.vpn_key,
                          suffixIcon: Icons.remove_red_eye),
                      SizedBox(height: 10.0),
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
