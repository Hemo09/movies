import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

class CustomRowHeader extends StatelessWidget {
  const CustomRowHeader({super.key, required this.text, this.press});
  final String text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, right: 8, left: 8, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: press,
            child: Text("SEE ALL",
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
