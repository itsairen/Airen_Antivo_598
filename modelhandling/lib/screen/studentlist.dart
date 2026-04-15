import 'package:flutter/material.dart';
import 'package:modelhandling/model/studentdata.dart';
import 'package:modelhandling/model/studentmodel.dart';

class Studentlist extends StatefulWidget {
  const Studentlist({super.key});

  @override
  State<Studentlist> createState() => _StudentlistState();
}

class _StudentlistState extends State<Studentlist> {
  final StudentService studentService = StudentService();
  List<Student> students = [];

  //Error handling
  bool isLoading = true;
  String? errorMessage;

  Future<void> loadStudents() async {
    //capture data
    try {
      final loadStudents = await studentService.fetchStudents();
      setState(() {
        students = loadStudents;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = "Failed to load students data. $e";
      });
    }
  }

  @override
  void initState() {
    loadStudents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text("${student.name}"),
            subtitle: Text("${student.age} | ${student.gpa}"),
          );
        },
      ),
    );
  }
}
