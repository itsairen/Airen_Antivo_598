
import 'package:modelhandling/model/studentmodel.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'ID': '2', 'Name': 'Jason Samson', 'Age': 20, 'Gpa': 1.5},
      {'ID': '3', 'Name': 'Juan Dela Cruz 1', 'Age': 25, 'Gpa': 1.6},
      {'ID': '4', 'Name': 'Juan Dela Cruz 2', 'Age': 24, 'Gpa': 1.7},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}