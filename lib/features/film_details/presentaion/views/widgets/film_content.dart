import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/film_video.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/film_rating.dart';

class FilmContent extends StatelessWidget {
  const FilmContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Killer of Flower The Moon"),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: kPrimaryColor,
                    size: 23,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "206",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const FilmRating(),
          const SizedBox(
            height: 10,
          ),
          const Text("Cinema , Drama , History."),
          const SizedBox(
            height: 10,
          ),
          Text(
            "2023- 10- 18",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Overview",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "when oil is discovered in 1920s Oklahoma under Osageation the Osage people are rnurdt•tet.l one by une'l the VBI Steps in tc unravel the mystery"),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Videos",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const FilmVideos(),
        ],
      ),
    );
  }
}
