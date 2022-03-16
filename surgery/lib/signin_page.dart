import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surgery/header.dart';
import 'package:surgery/reg_page.dart';

import 'btn_widget.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: Column(
          children: <Widget>[
            Header(),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _textInput(hint: 'อีเมล', icon: Icons.email),
                      _textInput(hint: 'รหัสผ่าน', icon: Icons.vpn_key),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text('ลืมรหัสผ่าน'),
                      ),
                      Expanded(
                        child: Center(
                          child: ButtonWidget(
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegPage()));
                            },
                            btnText: 'ลงชื่อเข้าใช้',
                          ),
                        ),
                      ),
                      Center(
                        child: Text('หรือ'),
                      ),
                      Expanded(
                        child: Center(
                          child: ButtonWidget(
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegPage()));
                            },
                            btnText: 'ลงชื่อเข้าด้วย KKU Mail',
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "สมัครสมาชิกใหม่",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

Widget _textInput({controller, hint, icon}) {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    padding: EdgeInsets.only(
      top: 10,
    ),
    child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(
              icon,
              color: Color.fromRGBO(16, 100, 93, 1),
            ))),
  );
}

// Widget _loginButton({controller, text}) {
//   return Container(
//     width: double.infinity,
//     height: 40,
//     decoration: BoxDecoration(
//         color: Color.fromRGBO(16, 103, 90, 1),
//         borderRadius: BorderRadius.all(
//           Radius.circular(3.0),
//         )),
//     alignment: Alignment.center,
//     child: Text(
//       text,
//       style: TextStyle(
//           fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//     ),
//   );
// }
