// import 'package:flutter/material.dart';
// import 'package:lab9/app_screens/rating_tap.dart';
//
// class Exercise1 extends StatelessWidget {
//   const Exercise1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//           alignment: Alignment.center,
//           color: Colors.black87,
//           child: Column(children: [
//             Container(
//               margin: const EdgeInsets.only(top: 60),
//               child: _buildStack(),
//             ),
//             Container(
//               margin: const EdgeInsets.only(
//                   top: 80, bottom: 40, left: 10, right: 10),
//               child: _buildCard(),
//               // ),
//               // const RatingTap(),
//             )
//           ])),
//     );
//   }
// }
//
// Widget _buildStack() {
//   return Stack(
//     alignment: const Alignment(0.5, 1.4),
//     children: [
//       const CircleAvatar(
//         backgroundImage: AssetImage('images/kuroko.gif'),
//         radius: 100,
//       ),
//       Container(
//         decoration: BoxDecoration(color: Colors.red[900]),
//         padding: const EdgeInsets.all(10),
//         // margin: const EdgeInsets.only(top: ),
//         child: const Text(
//           'Tetsuya Kuroko',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ],
//   );
// }
//
// // Widget _buildRating() {
// //   return Row(
// //     mainAxisSize: MainAxisSize.min,
// //     children: const [
// //       Icon(Icons.star, color: Colors.blueAccent),
// //       Icon(Icons.star, color: Colors.blueAccent),
// //       Icon(Icons.star, color: Colors.lightBlue),
// //       Icon(Icons.star, color: Colors.lightBlueAccent),
// //       Icon(Icons.star, color: Colors.white),
// //     ],
// //   );
// // }
//
// Widget _buildCard() {
//   return SizedBox(
//     height: 210,
//     child: Card(
//       color: Colors.red[900],
//       child: Column(
//         children: const [
//           ListTile(
//             title: Text(
//               "Tetsuya's Address",
//               style:
//                   TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
//             ),
//             subtitle: Text(
//               'japan',
//               style: TextStyle(color: Colors.white),
//             ),
//             leading: Icon(
//               Icons.apartment,
//               color: Colors.white,
//             ),
//           ),
//           Divider(),
//           ListTile(
//             title: Text(
//               '123 456 789',
//               style:
//                   TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
//             ),
//             leading: Icon(Icons.phone_android, color: Colors.white),
//           ),
//           ListTile(
//             title: Text(
//               'Tetsuya@gmail.com',
//               style:
//                   TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
//             ),
//             leading: Icon(
//               Icons.contact_mail,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab9_fixed/app_screens/rating_tap.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.black87,
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: _buildStack(),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 80, bottom: 40, left: 10, right: 10),
            child: _buildCard(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              RatingTap(),
              RatingTap(),
              RatingTap(),
              RatingTap()
            ],
          )
        ]),
      ),
    );
  }
}

Widget _buildStack() {
  return Stack(
    alignment: const Alignment(0.5, 1.4),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('images/kuroko.gif'),
        radius: 100,
      ),
      Container(
        decoration: BoxDecoration(color: Colors.red[900]),
        padding: const EdgeInsets.all(10),
        // margin: const EdgeInsets.only(top: ),
        child: const Text(
          'Tetsuya Kuroko',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _buildCard() {
  return SizedBox(
    height: 210,
    child: Card(
      color: Colors.red[900],
      child: Column(
        children: const [
          ListTile(
            title: Text(
              "Tetsuya's Address",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            subtitle: Text(
              'japan',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.apartment,
              color: Colors.white,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              '123 456 789',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            leading: Icon(Icons.phone_android, color: Colors.white),
          ),
          ListTile(
            title: Text(
              'Tetsuya@gmail.com',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
