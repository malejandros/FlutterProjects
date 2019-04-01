class Result {
  final int voteCount;
  final int id;
  final bool video;
  final double voteAverage;
  final String title;
  final double popularity;
  final String posterPath;
  final String originalLanguage;
  final String originalTitle;
  final List<int> genreIds;
  final String backdropPath;
  final bool adult;
  final String overview;

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
      this.overview});

  factory Result.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['genre_ids'] as List;
    List<int> genreList = [];
    for (int i = 0; i < list.length; i++) {
      genreList.add(list[i]);
    }

    return Result(
      adult: parsedJson['adult'],
      backdropPath: parsedJson['backdrop_path'],
      genreIds: genreList,
      id: parsedJson['id'],
      originalLanguage: parsedJson['original_language'],
      originalTitle: parsedJson['original_title'],
      overview: parsedJson['overview'],
      popularity: parsedJson['popularity'],
      posterPath: parsedJson['poster_path'],
      title: parsedJson['title'],
      video: parsedJson['video'],
      voteAverage: parsedJson['vote_average'],
      voteCount: parsedJson['vote_count'],
    );
  }
}
