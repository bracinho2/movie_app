import 'package:dio/dio.dart';
import 'package:movie_app/service/dio_service.dart';

class DioServiceImpl implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjY2ZkYTYzMzkzNGE2ZWMyNTE5ZjY2ZjdkOTM1NjM3ZiIsInN1YiI6IjYyYTYyOTVhN2UxMmYwMmZmNjVmZWNiNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.aEY5J-asdIAiYUkDCYWmwmptrGM-VX7-hpPhNJVDTw4',
        },
      ),
    );
  }
}
