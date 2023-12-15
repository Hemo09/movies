import 'package:flutter/material.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_row_header.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRowHeader(
          text: "Now Playing",
        ),
        CustomListView(),
      ],
    );
  }
}
