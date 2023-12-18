import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/film_content.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/reviews_list_view.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_row_header.dart';

class FilmDetailsBody extends StatelessWidget {
  const FilmDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(children: [
            SizedBox(
              height: 400,
              width: double.infinity,
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
                      erorrImage,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            const FilmContent(),
            CustomRowHeader(
              text: "Reviews",
              press: () {
                GoRouter.of(context).push(NamedScreen.kFullListScreen);
              },
            ),
          ]),
        ),
        const SliverToBoxAdapter(
          child: ReviewsListView(),
        ),
      ],
    );
  }
}
