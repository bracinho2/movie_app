import 'package:movie_app/models/movies_model.dart';

abstract class IMovieRepository {
  Future<Movies> getMovies();
}
