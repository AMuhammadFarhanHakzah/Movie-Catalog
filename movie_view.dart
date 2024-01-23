import 'package:flutter/material.dart';
import 'package:movie_catalog_app/model/movie.dart';
import 'package:movie_catalog_app/views/movie_list_view.dart';

class MovieView extends StatelessWidget {
  final Movie movie;
  const MovieView({
    super.key,
    required this.movie,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(23, 20, 31, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(23, 20, 31, 1)
        ,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const MovieListView())
              );
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,            
          ),
        )
        ,
        title: Text(
          "Movies",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [ 
        ListView (
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movie.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 4.0,),
                Padding(padding: EdgeInsets.only(top: 12.0,)),
                Text(
                  movie.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 4.0,),
                Text(
                  movie.category,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 4.0,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      movie.year,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 4.0,),
                    Text(
                      "|",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 4.0,),
                    Icon(
                      Icons.star,
                      color: Color(0xFFFFD702),
                      size: 12.0,
                    ),
                    const SizedBox(width: 4.0,),
                    Text(
                      movie.rating.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 12.0,
                    left: 16.0,
                    right: 16.0,
                    bottom: 40.0,
                  ),
                  child: Text(
                    movie.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
                  child: Container(
                    color: const Color(0xFF17141F),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                          ),
                          onPressed: (){
                    
                          },
                          child: Text(
                            "Remove",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0,),
                      Expanded(
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white),
                          ),
                          onPressed: (){
                          },
                          child: Text(
                            "Exit",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.black87,
                            ),
                          ),
                        ), 
                      ),
                    ],
                   ),
                  ),
          ),
        ],
      ), 
    );
  }
}