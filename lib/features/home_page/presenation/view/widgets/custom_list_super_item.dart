import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/film_rating.dart';

class CustomListViewSuperItem extends StatelessWidget {
  const CustomListViewSuperItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        color: const Color(0xff111111),
        width: 180,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: testImage2,
              height: 200,
              width: 200,
              fit: BoxFit.fill,
              placeholder: (context, url) =>
                  Center(child: Image.asset("assets/gif/spinner.gif")),
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.error)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Game Of Throne",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "25-5-2013",
                    style: TextStyle(
                        fontSize: 17,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FilmRating(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
