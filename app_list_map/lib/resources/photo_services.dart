import 'dart:async';
import 'dart:convert';
import '../models/photo_list_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class PhotoService {
  Future<String> _loadPhotoList() async {
    return await rootBundle.loadString('assets/photos.json');
  }

  Future loadPhotoList() async {
    String jsonString = await _loadPhotoList();
    final jsonResponse = json.decode(jsonString);
    PhotoList p = new PhotoList.fromJson(jsonResponse);
    print(p.photos);
  }
}
