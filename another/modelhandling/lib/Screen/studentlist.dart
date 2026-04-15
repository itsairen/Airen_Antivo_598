import 'package:flutter/material.dart';
import 'package:modelhandling/model/studentdata.dart';
import 'package:modelhandling/model/studentmodel.dart';

class Studentlist extends StatefulWidget {
  const Studentlist({super.key});

  @override
  State<Studentlist> createState() => _StudentlistState();
}

class _StudentlistState extends State<Studentlist> {
  final StudentService studentservice =StudentService();
  List<Student> students =[];

 //ERROR Handling
 bool isloading = true;
 String? errormessage;

 Future<void> loadStudent() async{
  // capture data
  try{
    final loadStudent = await studentservice.fetchStudents();
    setState(() {
      students =loadStudent;
      isloading = false;
    });
  }

  catch(e){
    setState(() {
      isloading = false;
      errormessage = 'Failed to load student Data $e';
    });
  }
 }
  @override
  void initState() {
    loadStudent();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index){
          final student = students[index];
          return ListTile(
            title: Text('${student.Name}'),
            subtitle: Text('${student.Age} | ${student.Gpa}'),
          );
        },
      ),
    );
  }
}