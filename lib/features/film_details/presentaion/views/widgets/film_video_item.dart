import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

class FilmVideoItem extends StatelessWidget {
  const FilmVideoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.height * .3,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            imageUrl: testImage2,
            fit: BoxFit.cover,
            width: double.infinity,
            placeholder: (context, url) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            errorWidget: (context, url, error) {
              return Image.asset(
                errorYoutube,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
