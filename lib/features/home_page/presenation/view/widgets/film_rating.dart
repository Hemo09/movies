import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilmRating extends StatelessWidget {
  const FilmRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 22,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "23",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "(22)",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
