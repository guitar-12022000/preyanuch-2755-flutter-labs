import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lab13/exercise/list_item_ex2.dart';

import '../jason_object/jason_object_ex2.dart';

class FetchAlbum extends StatefulWidget {
  const FetchAlbum({Key? key}) : super(key: key);

  @override
  State<FetchAlbum> createState() => _FetchAlbumState();
}

class _FetchAlbumState extends State<FetchAlbum> {
  List<Albums> _albumList = [];
  void getData() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/albums");
    http.Response response = await http.get(url);
    setState(() {
      _albumList = List.from(jsonDecode(response.body))
          .map((album) => Albums.fromJson(album))
          .toList(); //create list of id and title
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise2 by Preyanuch Phutsay 623040275-5"),
      ),
      body: ListView.builder(
        itemCount: _albumList.length,
        itemBuilder: (context, index) => ListItem(item: _albumList[index]),
      ),
    );
  }
}
