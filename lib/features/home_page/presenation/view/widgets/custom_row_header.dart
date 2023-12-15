import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

class CustomRowHeader extends StatelessWidget {
  const CustomRowHeader({super.key, required this.text, this.press});
  final String text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 5, left: 5, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Now Playing",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: press,
            child: Text("See All",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}
