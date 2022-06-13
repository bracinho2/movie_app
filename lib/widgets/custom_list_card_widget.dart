import 'package:flutter/material.dart';

import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Movie movie;
  const CustomListCardWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(API.REQUEST_IMG(movie.posterPath)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                movie.title,
                style: Theme.of(context).textTheme.headline6,
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              const Spacer(),
              Text('Popularidade: ' + movie.popularity.toString()),
              const SizedBox(
                height: 10,
              ),
              Text('Popularidade: ' + movie.voteAverage.toString()),
            ]),
          ))
        ],
      ),
    );
  }
}

//Image.network(API.REQUEST_IMG(movie.posterPath));
