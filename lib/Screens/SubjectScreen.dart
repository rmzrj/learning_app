import 'package:flutter/material.dart';
class SubjectScreen extends StatefulWidget {
  final String subjectName;

  const SubjectScreen({Key? key, required this.subjectName}) : super(key: key);

  @override
  _SubjectScreenState createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.subjectName),),
      body: Text("SUB"),
    );
  }
}
