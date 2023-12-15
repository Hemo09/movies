import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_view_up_coming.dart';

class FullListFilms extends StatelessWidget {
  const FullListFilms({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          text!,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CustomListViewUpComing(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
