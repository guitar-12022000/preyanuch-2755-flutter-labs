import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab13/exercise/fetch_from_internet_ex1.dart';

import '../jason_object/jason object_ex1.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({Key? key}) : super(key: key);

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  late Future<Album> futureAlbum;

  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Exercise1 by Preyanuch Phutsay 623040275-5",
          ),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                    "${snapshot.data!.name} work at ${snapshot.data!.companyName}");
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
