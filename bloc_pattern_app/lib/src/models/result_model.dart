class Result {
  final int voteCount;
  final int id;
  final bool video;
  var voteAverage;
  final String title;
  final double popularity;
  final String posterPath;
  final String originalLanguage;
  final String originalTitle;
  final List<int> genreIds;
  final String backdropPath;
  final bool adult;
  final String overview;
  final String releaseDate;

  Result(
      {this.voteCount,
      this.id,
      this.video,
      this.voteAverage,
      this.title,
      this.popularity,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.releaseDate});

  factory Result.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['genre_ids'] as List;
    print(list);
    List<int> genreList = [];
    for (int i = 0; i < list.length; i++) {
      genreList.add(list[i]);
    }

    return Result(
        voteCount: parsedJson['vote_count'],
        id: parsedJson['id'],
        video: parsedJson['video'],
        voteAverage: parsedJson['vote_average'],
        title: parsedJson['title'],
        popularity: parsedJson['popularity'],
        posterPath: parsedJson['poster_path'],
        originalTitle: parsedJson['original_title'],
        originalLanguage: parsedJson['original_language'],
        genreIds: genreList,
        backdropPath: parsedJson['backdrop_path'],
        adult: parsedJson['adult'],
        overview: parsedJson['overview'],
        releaseDate: parsedJson['release_date']);
  }
}
