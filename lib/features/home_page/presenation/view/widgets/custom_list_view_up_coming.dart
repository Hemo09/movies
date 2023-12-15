import 'package:flutter/material.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_item_verticaly.dart';

class CustomListViewUpComing extends StatelessWidget {
  const CustomListViewUpComing({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
            child: CustomListItemUpComing(),
          );
        });
  }
}
