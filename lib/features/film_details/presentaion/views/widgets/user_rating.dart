import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserRating extends StatelessWidget {
  const UserRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.solidStar,
              color: Color(0xffFFDD4F),
              size: 16,
            ),
            SizedBox(
              width: 6.3,
            ),
            Text(
              "10",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
