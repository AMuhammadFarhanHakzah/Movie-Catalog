import 'package:flutter/material.dart';
import 'package:movie_catalog_app/widgets/movie_container.dart';
import 'package:movie_catalog_app/controller/movie_controller.dart';

class MovieListView extends StatelessWidget {
  const MovieListView ({super.key});

@override
Widget build(BuildContext context) {
  final movieController = MovieController();
  final movies = movieController.movies;
  return Scaffold(
    backgroundColor: const Color.fromRGBO(23, 20, 31, 1),
    appBar: AppBar(
      backgroundColor: const Color.fromRGBO(23, 20, 31, 1),
      centerTitle: true,
      title: const Text(
        "Movies",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
      ),
      actions: const [
        Icon(
          Icons.add,
          color: Colors.white,
        )
      ],
    ),
    body: ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieContainer(
          movie: movies[index],
        );
      },

    ),

  );
}
}

