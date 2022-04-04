import 'dart:core';

class Albums {
  int id;
  String title;
  Albums.fromJson(Map<dynamic, dynamic> albumJson)
      : id = albumJson['id'],
        title = albumJson['title'];
}
