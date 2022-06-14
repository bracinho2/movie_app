import 'dart:convert';

import 'package:movie_app/decorators/movies_repositories_decorator.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator {
  MoviesCacheRepositoryDecorator(IMovieRepository iMovieRepository)
      : super(iMovieRepository);

  @override
  Future<Movies> getMovies() async {
    try {
      Movies movies = await super.getMovies();

      _saveInCache(movies);
      return movies;
    } catch (e) {
      print('ERRO DE INTERNET');
      return await _getInCache();
    }
  }

  _saveInCache(Movies movies) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String jsonMovies = jsonEncode(movies.toJson());
    _prefs.setString('movies_cache', jsonMovies);
    print('Salvou os filmes no cache' + jsonMovies);
  }

  Future<Movies> _getInCache() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var moviesJsonString = _prefs.getString('movies_cache')!;
    var json = jsonDecode(moviesJsonString);
    var movies = Movies.fromJson(json);
    print('Recuperou do cache os filmes ' + movies.toString());
    return movies;
  }
}
