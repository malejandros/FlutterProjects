import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/item_model.dart';

class MoviesBloc {
  final repository = Repository();
  final movieFecther = PublishSubject<Item>();

  Observable<Item> get allMovies => movieFecther.stream;

  fetchAllMovies() async {
    Item itemModel = await repository.fetchAllMovies();
    movieFecther.sink.add(itemModel);
  }

  dispose() {
    movieFecther.close();
  }
}

final bloc = MoviesBloc();
