import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_super.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_up_coming.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_row_header.dart';

class SeriesPageBody extends StatelessWidget {
  const SeriesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            CustomRowHeader(
              text: "Airing Today",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "Airing Today");
              },
            ),
            const CustomListView(),
            CustomRowHeader(
              text: "popular",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "popular");
              },
            ),
            const CustomListViewSuper(),
            CustomRowHeader(
              text: "Top Rated",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "Top Rated");
              },
            ),
            const CustomListViewSuper(),
            const SizedBox(
              height: 10,
            ),
            CustomRowHeader(
              text: "On The Air",
              press: () {
                GoRouter.of(context)
                    .push(NamedScreen.kFullListScreen, extra: "On The Air");
              },
            ),
          ],
        ),
      )),
      const SliverToBoxAdapter(
        child: CustomListViewUpComing(),
      ),
    ]);
  }
}
