import 'package:flutter/material.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/film_details_body.dart';

class FilmDetails extends StatelessWidget {
  const FilmDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: FilmDetailsBody(),
    ));
  }
}
