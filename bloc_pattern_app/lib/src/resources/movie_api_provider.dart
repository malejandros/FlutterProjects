import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' show Client;
import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final String _apiKey = '802b2c4b88ea1183e50e6b285a27696e';

  Future<Item> fetchAllMovies() async {
    print('haciendo peticion http');
    final response = await client
        .get('http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey');
    print(response.body.toString());
    if (response.statusCode == 200) {
      return Item.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
