import 'package:animated_react_button/animated_react_button.dart';
import 'package:flutter/material.dart';

//Model
class Movie {
  final String title;
  final List<String> genere;
  bool isFavorite = false;
  bool isReacting = false;
  Movie({
    required this.title,
    required this.genere,
  });
}

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  List<Movie> movies = [];
  bool isReacting = false;
  @override
  void initState() {
    fetchMoviesFakeApi();
    super.initState();
  }

  void fetchMoviesFakeApi() {
    //loading indicator will setted here
    movies = [
      Movie(
          title: "House of the dragon",
          genere: ["Action", "Adventure", "Drama"]),
      Movie(
          title: "She-Hulk: Attorney at Law",
          genere: ["Action", "Adventure", "Comedy"]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Card(
                elevation: 5,
                child: ListTile(
                  title: Text(movies[index].title),
                  subtitle: Row(
                    children: List<Widget>.generate(
                        movies[index].genere.length,
                        (genIndex) => Container(
                            margin: const EdgeInsets.only(
                              left: 8,
                            ),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.withOpacity(0.2)),
                            child: Text(
                              movies[index].genere[genIndex],
                              style: const TextStyle(fontSize: 10),
                            ))),
                  ),
                  trailing: Stack(
                    children: [
                      AnimatedReactButton(
                        onPressed: () async {
                          //API Calls
                          movies[index].isReacting = true;
                          setState(() {
                            isReacting = true;
                          });
                          await Future.delayed(const Duration(seconds: 1));
                          setState(() {
                            movies[index].isFavorite =
                                !movies[index].isFavorite;
                          });
                          movies[index].isReacting = false;
                        },
                        defaultColor:
                            movies[index].isFavorite ? Colors.red : Colors.grey,
                        reactColor: !movies[index].isFavorite
                            ? Colors.red
                            : Colors.grey,
                      ),
                      Visibility(
                          visible: movies[index].isReacting,
                          child: const CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
