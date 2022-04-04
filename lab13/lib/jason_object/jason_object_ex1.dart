import 'dart:core';

class Album {
  final String name;
  final String companyName;

  const Album({required this.name, required this.companyName});
  factory Album.frommJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'],
      companyName: json['company']['name'],
    );
  }
}
