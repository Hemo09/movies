import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/user_rating.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: testImage2,
                      fit: BoxFit.cover,
                      placeholder: (context, url) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return Image.asset(errorUser);
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 3,
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
