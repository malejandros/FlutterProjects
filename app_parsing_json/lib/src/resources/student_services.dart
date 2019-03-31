import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import '../models/student_model.dart';

class StudentService {
  Future<String> _loadAStudentAsset() async {
    return await rootBundle.loadString('assets/student.json');
  }

  Future loadStudent() async {
    // Loading the raw json String from the assets.
    String jsonString = await _loadAStudentAsset();
    // Decoding this raw json String we got.
    final jsonResponse = json.decode(jsonString);
    // Deserializing the decoded json response
    Student student = new Student.fromJson(jsonResponse);
    // Printed studentScores from Student class.
    print(student.studentScores);
  }
}
