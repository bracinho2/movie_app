class Movies {
  Movies({
    required this.posterPath,
    required this.id,
    required this.backdropPath,
    required this.totalResults,
    required this.public,
    required this.revenue,
    required this.page,
    required this.listMovies,
    required this.objectIds,
    required this.iso_639_1,
    required this.totalPages,
    required this.description,
    required this.createdBy,
    required this.iso_3166_1,
    required this.averageRating,
    required this.runtime,
    required this.name,
    required this.comments,
  });
  late final String posterPath;
  late final int id;
  late final String backdropPath;
  late final int totalResults;
  late final bool public;
  late final String revenue;
  late final int page;
  late final List<Movie> listMovies;
  late final ObjectIds objectIds;
  late final String iso_639_1;
  late final int totalPages;
  late final String description;
  late final CreatedBy createdBy;
  late final String iso_3166_1;
  late final double averageRating;
  late final int runtime;
  late final String name;
  late final Comments comments;

  Movies.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    totalResults = json['total_results'];
    public = json['public'];
    revenue = json['revenue'].toString();
    page = json['page'];
    listMovies =
        List.from(json['results']).map((e) => Movie.fromJson(e)).toList();
    objectIds = ObjectIds.fromJson(json['object_ids']);
    iso_639_1 = json['iso_639_1'];
    totalPages = json['total_pages'];
    description = json['description'];
    createdBy = CreatedBy.fromJson(json['created_by']);
    iso_3166_1 = json['iso_3166_1'];
    averageRating = json['average_rating'];
    runtime = json['runtime'];
    name = json['name'];
    comments = Comments.fromJson(json['comments']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['poster_path'] = posterPath;
    _data['id'] = id;
    _data['backdrop_path'] = backdropPath;
    _data['total_results'] = totalResults;
    _data['public'] = public;
    _data['revenue'] = revenue;
    _data['page'] = page;
    _data['results'] = listMovies.map((e) => e.toJson()).toList();
    _data['object_ids'] = objectIds.toJson();
    _data['iso_639_1'] = iso_639_1;
    _data['total_pages'] = totalPages;
    _data['description'] = description;
    _data['created_by'] = createdBy.toJson();
    _data['iso_3166_1'] = iso_3166_1;
    _data['average_rating'] = averageRating;
    _data['runtime'] = runtime;
    _data['name'] = name;
    _data['comments'] = comments.toJson();
    return _data;
  }
}

class Movie {
  Movie({
    required this.posterPath,
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.originalTitle,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.title,
    required this.backdropPath,
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.voteAverage,
  });
  late final String posterPath;
  late final bool adult;
  late final String overview;
  late final String releaseDate;
  late final String originalTitle;
  late final List<int> genreIds;
  late final int id;
  late final String mediaType;
  late final String originalLanguage;
  late final String title;
  late final String backdropPath;
  late final double popularity;
  late final int voteCount;
  late final bool video;
  late final double voteAverage;

  Movie.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    originalTitle = json['original_title'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['poster_path'] = posterPath;
    _data['adult'] = adult;
    _data['overview'] = overview;
    _data['release_date'] = releaseDate;
    _data['original_title'] = originalTitle;
    _data['genre_ids'] = genreIds;
    _data['id'] = id;
    _data['media_type'] = mediaType;
    _data['original_language'] = originalLanguage;
    _data['title'] = title;
    _data['backdrop_path'] = backdropPath;
    _data['popularity'] = popularity;
    _data['vote_count'] = voteCount;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    return _data;
  }
}

class ObjectIds {
  ObjectIds({
    required this.movie,
  });
  late final String movie;

  ObjectIds.fromJson(Map<String, dynamic> json) {
    movie = json['movie:100402'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['movie:100402'] = movie;

    return _data;
  }
}

class CreatedBy {
  CreatedBy({
    required this.gravatarHash,
    required this.name,
    required this.username,
  });
  late final String gravatarHash;
  late final String name;
  late final String username;

  CreatedBy.fromJson(Map<String, dynamic> json) {
    gravatarHash = json['gravatar_hash'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gravatar_hash'] = gravatarHash;
    _data['name'] = name;
    _data['username'] = username;
    return _data;
  }
}

class Comments {
  Comments({
    this.movie,
  });
  // ignore: prefer_typing_uninitialized_variables
  late final movie;

  Comments.fromJson(Map<String, dynamic> json) {
    movie = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['movie:100402'] = movie;

    return _data;
  }
}
