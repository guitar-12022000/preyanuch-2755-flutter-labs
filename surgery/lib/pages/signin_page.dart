import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surgery/widgets/header.dart';
import 'package:surgery/pages/reg_page.dart';
import '../widgets/btn_widget.dart';
import '../widgets/text_input.dart';
import 'kkureg_page.dart';

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
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            Header(containerSize: 0.4, headerText: "เตรียมผู้ป่วยก่อนผ่าตัด"),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      textInput(hint: 'อีเมล', prefixIcon: Icons.email),
                      SizedBox(height: 10.0),
                      textInput(
                          hint: 'รหัสผ่าน',
                          prefixIcon: Icons.vpn_key,
                          suffixIcon: Icons.remove_red_eye),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: const Text(
                          'ลืมรหัสผ่าน',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20),
                        ),
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
                            btnText: 'ลงชื่อเข้าใช้งาน',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: const Center(
                            child: Text(
                              'หรือ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(16, 100, 93, 1)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: ButtonWidget(
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KkuRegPage()));
                            },
                            btnText: 'ลงชื่อเข้าด้วย KKU Mail',
                          ),
                        ),
                      ),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegPage()));
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "ลงทะเบียนใหม่",
                                style: TextStyle(
                                    color: Color.fromRGBO(16, 100, 93, 1),
                                    decoration: TextDecoration.underline,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
