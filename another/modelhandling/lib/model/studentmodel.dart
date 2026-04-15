class Student{

  final String ID;
  final String Name;
  final int Age;
  final double Gpa;

  Student({

    required this.ID,
    required this.Name,
    required this.Age,
    required this.Gpa,

  });
  //Raw data to Json
  factory Student.fromMap(Map<String, dynamic> map){
    return Student(
      ID: map["ID"] as String,
      Name: map['Name'] as String,
      Age: map['Age'] as int,
      Gpa: (map['Gpa'] as num).toDouble()
      );
  }

  //Json to Raw Data
  Map<String, dynamic> toMap(){
    return{

      'ID' : ID,
      'Name' : Name,
      'Age' : Age,
      'Gpa' : Gpa

    };

  }

}