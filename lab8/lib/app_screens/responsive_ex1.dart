import 'package:flutter/material.dart';

class ResponsiveEx1 extends StatelessWidget {
  const ResponsiveEx1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _landScapeDisplay();
          } else {
            return _portraitDisplay();
          }
        },
      ),
    );
  }
}

Widget _portraitDisplay() {
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
        _buildRating()
      ]),
    ),
  );
}

Widget _landScapeDisplay() {
  return Center(
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      color: Colors.black87,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          child: _buildStack(),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_buildCard(), _buildRating()],
        ))
      ]),
    ),
  );
}

Widget _buildRating() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.star, color: Colors.blueAccent),
      Icon(Icons.star, color: Colors.blueAccent),
      Icon(Icons.star, color: Colors.lightBlue),
      Icon(Icons.star, color: Colors.lightBlueAccent),
      Icon(Icons.star, color: Colors.white),
    ],
  );
}

Widget _buildStack() {
  return Stack(
    alignment: const Alignment(0.5, 1.4),
    children: [
      const CircleAvatar(
        backgroundImage: AssetImage('images/kuroko.gif'),
        radius: 130,
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
