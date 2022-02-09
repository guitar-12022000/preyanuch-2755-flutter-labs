import 'package:flutter/material.dart';
import 'package:lab8/app_screens/faculty_data_model.dart';

class FacultyDetail extends StatelessWidget {
  final FacultyDataModel facultyDataModel;
  const FacultyDetail({Key? key, required this.facultyDataModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facultyDataModel.name),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                  padding: const EdgeInsets.all(12),
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              child: Text(
                facultyDataModel.link,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              onPressed: () => {null},
            ),
          ),
          Text(facultyDataModel.thaiName,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Image.network(facultyDataModel.imageUrl),
        ],
      ),
    );
  }
}
