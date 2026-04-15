import 'package:modelhandling/model/studentmodel.dart';

class StudentService {
  Future<List<Student>> fetchStudents() async {
    await Future.delayed(const Duration(seconds: 2));

    final rawData = [
      {'id': '2', 'name': 'Airen Antivo', 'age': 20, 'gpa': 1.5},
      {'id': '3', 'name': 'Sistine Anne Aguana', 'age': 25, 'gpa': 1.6},
      {'id': '4', 'name': 'Angelyn Carias', 'age': 24, 'gpa': 1.7},
    ];

    return rawData.map((data) => Student.fromMap(data)).toList();
  }
}
