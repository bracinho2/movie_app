import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';

class MoviesRepositoryDecorator implements IMovieRepository {
  final IMovieRepository _iMovieRepository;

  MoviesRepositoryDecorator(this._iMovieRepository);
  @override
  Future<Movies> getMovies() async {
    return await _iMovieRepository.getMovies();
  }
}
