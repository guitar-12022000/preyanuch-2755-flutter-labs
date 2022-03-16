// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:surgery/btn_widget.dart';
//
// import 'header.dart';
//
// class RegPage extends StatefulWidget {
//   const RegPage({Key? key}) : super(key: key);
//
//   @override
//   State<RegPage> createState() => _RegPageState();
// }
//
// class _RegPageState extends State<RegPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(bottom: 50),
//         child: Column(
//           children: <Widget>[
//             Header(),
//             Expanded(
//                 flex: 1,
//                 child: Container(
//                   margin: EdgeInsets.only(left: 20, right: 20, top: 30),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: <Widget>[
//                       _textInput(hint: 'ชื่อ', icon: Icons.email),
//                       _textInput(hint: 'นามสกุล', icon: Icons.vpn_key),
//                       _textInput(hint: 'แผนก', icon: Icons.vpn_key),
//                       _textInput(hint: 'อีเมล', icon: Icons.vpn_key),
//                       _textInput(hint: 'รหัสผ่าน', icon: Icons.vpn_key),
//                       _textInput(hint: 'รหัสผ่านอีกครั้ง', icon: Icons.vpn_key),
//                       Expanded(
//                         child: Center(
//                           child: ButtonWidget(
//                             btnText: 'ลงทะเบียน',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget _textInput({controller, hint, icon}) {
//   return Container(
//     decoration: BoxDecoration(color: Colors.white),
//     padding: EdgeInsets.only(
//       top: 10,
//     ),
//     child: TextFormField(
//         controller: controller,
//         decoration: InputDecoration(
//             hintText: hint,
//             prefixIcon: Icon(
//               icon,
//               color: Color.fromRGBO(16, 100, 93, 1),
//             ))),
//   );
// }
