//  PODO (Plain Old Dart Object)
class Student {
  String studentId;
  String studentName;
  int studentScores;

// Constructor
  Student({this.studentId, this.studentName, this.studentScores});

// Factory method whose objetive is to simply deserialize your JSON
// Serialization simply means writing the data(wich might be in an object) as a string (object -> string)
// Deserialization is the opposite of that (string -> object)
  factory Student.fromJson(Map<String, dynamic> parseJson) {
    return Student(
        studentId: parseJson['id'],
        studentName: parseJson['name'],
        studentScores: parseJson['score']);
  }
}
