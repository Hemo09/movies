import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/user_rating.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_row_header.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/film_rating.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowHeader(
          text: "Reviews",
          press: () {
            GoRouter.of(context).push(NamedScreen.kFullListScreen);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: CachedNetworkImage(
                    imageUrl: testImage2,
                    placeholder: (context, url) {
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorWidget: (context, url, error) {
                      return Image.asset(
                        errorUser,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Lachian Thiele",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "2023-05-25",
                      style: TextStyle(color: kPrimaryColor),
                    )
                  ],
                ),
              ],
            ),
            Container(
              width: 60,
              height: 35,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  border:
                      Border.all(width: 1.5, color: const Color(0xff49454d)),
                  borderRadius: const BorderRadius.all(Radius.circular(60.0))),
              child: const UserRating(),
            ),
          ],
        ),
      ],
    );
  }
}
