import 'package:flutter/material.dart';

class MovieYear extends StatelessWidget {
  final String year;
  const MovieYear({
    super.key,
    required this.year,
    });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double yearSize = screenWidth * 0.03;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 2.0,
      )
      ,
      decoration: BoxDecoration(
        color: Colors.white70.withOpacity(0.75),
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
      ),
      child: Text(
            year,
            style: TextStyle(
              color: Colors.white,
              fontSize: yearSize,
            )
          ),
    );
  }
}