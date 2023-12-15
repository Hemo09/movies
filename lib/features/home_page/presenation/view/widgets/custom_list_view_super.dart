import 'package:flutter/material.dart';
import 'package:movie_app/features/home_page/presenation/view/widgets/custom_list_super_item.dart';

class CustomListViewSuper extends StatelessWidget {
  const CustomListViewSuper({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomListViewSuperItem();
        },
      ),
    );
  }
}
