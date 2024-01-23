import 'package:flutter/material.dart';
import 'package:movie_catalog_app/model/movie.dart';
import 'package:movie_catalog_app/views/movie_view.dart';
import 'package:movie_catalog_app/widgets/movie_rating.dart';
import 'package:movie_catalog_app/widgets/movie_year.dart';




class MovieContainer extends StatelessWidget {
  final Movie movie;
  const MovieContainer({
    super.key, 
    required this.movie
    });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize = screenWidth * 0.05;
    double categoryFontSize = screenWidth * 0.03;
    double descriptionFontSize = screenWidth * 0.03;


    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => MovieView(movie: movie),
            ),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  movie.imagePath, 
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover
                ),
              ),
            ), 
            const SizedBox(width: 10.0,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                    movie.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: titleFontSize,
                      color: Colors.white,                
                    )
                  ),
                  ),
                  const SizedBox(height: 4.0,),
                  Text(
                    movie.category,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: categoryFontSize,
                      color: Colors.white70
                    )
                  ),
                  const SizedBox(height: 4.0,),
                  Row(
                    children: [
                      MovieYear(year: movie.year,),
                      SizedBox(width: 4.0,),
                      MovieRating(rating: movie.rating),                
                    ],
                  ),
                  Container(
                        child: Text(
                          movie.description,                        
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: descriptionFontSize,
                          ),
                          maxLines: 4, 
                          textAlign: TextAlign.justify, 
                          overflow: TextOverflow.ellipsis,
                        ),                                   
                      ),
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
