import 'result_model.dart';

class Item {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<Result> results;

  Item({this.page, this.totalResults, this.totalPages, this.results});

  factory Item.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['results'] as List;
    List<Result> resultsList = list.map((i) => Result.fromJson(i)).toList();
    return Item(
      page: parsedJson['page'],
      totalPages: parsedJson['totalPages'],
      totalResults: parsedJson['totalResults'],
      results: resultsList,
    );
  }
}
