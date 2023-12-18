import 'package:flutter/material.dart';
import 'package:movie_app/features/film_details/presentaion/views/widgets/reviews.dart';

class ReviewsListView extends StatelessWidget {
  const ReviewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const Reviews();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 6,
            );
          },
          itemCount: 10),
    );
  }
}
