import 'package:flutter/material.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/film_video_item.dart';

class FilmVideos extends StatelessWidget {
  const FilmVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const FilmVideoItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: 10),
    );
  }
}
