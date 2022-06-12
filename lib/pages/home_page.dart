import 'package:flutter/material.dart';
import 'package:movie_app/controllers/movie_controller.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository_impl.dart';
import 'package:movie_app/service/dio_service_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller =
      MovieController(MoviesRepositoryImpl(DioServiceImpl()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<Movies?>(
          valueListenable: _controller.movies,
          builder: (_, movies, __) {
            return movies != null
                ? ListView.builder(
                    itemCount: movies.listMovies.length,
                    itemBuilder: ((context, index) =>
                        Text(movies.listMovies[index].title)),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
