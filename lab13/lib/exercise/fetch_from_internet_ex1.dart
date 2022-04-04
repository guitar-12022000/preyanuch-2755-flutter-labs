import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../jason_object/jason_object_ex1.dart';

Future<Album> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

  if (response.statusCode == 200) {
    return Album.frommJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
