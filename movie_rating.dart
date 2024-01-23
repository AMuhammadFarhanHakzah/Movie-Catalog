import 'package:flutter/material.dart';

class MovieRating extends StatelessWidget {
  final double rating;
  const MovieRating({
    super.key,
    required this.rating,
    });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth * 0.03;
    double ratingFontSize = screenWidth * 0.03;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2.0,
        horizontal: 8.0,
      )
      ,
      decoration: BoxDecoration(
        color: Colors.white70.withOpacity(0.75),
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Color(0xFFFFd700),
            size: iconSize,
          ),
          Text(
            rating.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: ratingFontSize,
            )
          )
        ],
      ),
    );
  }
}