import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  var size;
  Header({required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * size,
      decoration: BoxDecoration(
        color: Color.fromRGBO(16, 103, 90, 1),
      ),
      child: Center(
        child: Text(
          'เตรียมผู้ป่วยก่อนการผ่าตัด',
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
      ),
    );
  }
}
