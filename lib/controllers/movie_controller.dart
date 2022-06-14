import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';

class MovieController {
  final IMovieRepository _iMovieRepository;

  MovieController(this._iMovieRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  Movies? _cachedMovies;

  onChanged(String value) {
    List<Movie> list = _cachedMovies!.listMovies
        .where(
          (element) => element.toString().toLowerCase().contains(
                value.toLowerCase(),
              ),
        )
        .toList();

    movies.value = movies.value!.copyWith(listMovies: list);
  }

  fetch() async {
    movies.value = await _iMovieRepository.getMovies();
    _cachedMovies = movies.value;
  }
}
