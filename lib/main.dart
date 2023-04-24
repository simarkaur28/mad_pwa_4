import 'package:flutter/material.dart';
import 'SubjectFaculty.dart';

void main() {
  runApp(MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<SubjectFaculty> subjects = [
    SubjectFaculty(sub: "Wireless Technology", teacher: "Prof. Tayyabali"),
    SubjectFaculty(sub: "MAD_PWA", teacher: "Prof. Nilesh Ghavate"),
  ];

  Widget subjectTemplate(sub) {
    return Card(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(sub.subject),
              SizedBox(
                height: 20.0,
              ),
              Text(sub.faculty),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Subjects"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: subjects.map((sub) => subjectTemplate(sub)).toList(),
      ),
    );
  }
}
