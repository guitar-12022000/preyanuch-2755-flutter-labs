import 'package:flutter/material.dart';
import 'package:lab8/app_screens/faculty_data_model.dart';
import 'package:lab8/app_screens/faculty_detail.dart';
import 'faculty_data_model.dart';

class FacultyList extends StatefulWidget {
  const FacultyList({Key? key}) : super(key: key);

  @override
  _FacultyListState createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  static List<String> facultyName = ['Engineering', 'Medicine', 'Architecture'];

  static List<String> facultyThaiName = [
    'วิศวกรรมศาสตร์',
    'แพทยศาสตร์',
    'สถาปัตยกรรมศาสตร์'
  ];
  static List<String> facultyLink = [
    'https://www.en.kku.ac.th/web/',
    'https://www.md.kku.ac.th/web/',
    'https://www.arc.kku.ac.th/web/'
  ];
  static List imageUrl = [
    'https://www.en.kku.ac.th/web/wp-content/uploads/2016/03/C-1-of-1-1024x650.jpg',
    'https://www.kku.ac.th/wp-content/uploads/2019/11/DSC_7444-.jpg',
    'https://ghostsilane.com/wp-content/uploads/2020/04/%E0%B8%AA%E0%B8%B0%E0%B8%9E%E0%B8%B2%E0%B8%99%E0%B8%82%E0%B8%B2%E0%B8%A7-1024x682.jpg'
  ];

  final List<FacultyDataModel> facultyData = List.generate(
      facultyName.length,
      (index) => FacultyDataModel(facultyName[index], facultyThaiName[index],
          facultyLink[index], '${imageUrl[index]}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KKU faculties'),
      ),
      body: ListView.builder(
        itemCount: facultyData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(facultyData[index].name),
              leading: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FacultyDetail(
                      facultyDataModel: facultyData[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
