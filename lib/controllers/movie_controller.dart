import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';

class MovieController {
  final IMovieRepository _iMovieRepository;

  MovieController(this._iMovieRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  fetch() async {
    movies.value = await _iMovieRepository.getMovies();
  }
}
