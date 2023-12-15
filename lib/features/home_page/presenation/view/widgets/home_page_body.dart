import 'package:flutter/material.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_super.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_up_coming.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_row_header.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            CustomRowHeader(text: "Now Playing"),
            CustomListView(),
            CustomRowHeader(text: "popular"),
            CustomListViewSuper(),
            CustomRowHeader(text: "Top Rated"),
            CustomListViewSuper(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
      SliverToBoxAdapter(
        child: CustomListViewUpComing(),
      ),
    ]);
  }
}
