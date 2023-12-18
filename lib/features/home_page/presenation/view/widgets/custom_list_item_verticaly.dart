import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/film_rating.dart';

class CustomListItemUpComing extends StatelessWidget {
  const CustomListItemUpComing({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NamedScreen.kFilmDetails);
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff111111),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 160,
                  child: AspectRatio(
                    aspectRatio: 2.7 / 4,
                    child: CachedNetworkImage(
                      height: 120,
                      width: 160,
                      fit: BoxFit.fill,
                      imageUrl: testImage2,
                      placeholder: (context, url) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return Image.asset(
                          erorrImage,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: const Text(
                        "Game Of Thrones",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "No name",
                    ),
                    const Row(
                      children: [
                        Text("free",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        Spacer(),
                        FilmRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
