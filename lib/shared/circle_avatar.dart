// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  String image;
  String circleAvatarLabel;
  MyCircleAvatar({
    Key? key,
    required this.image,
    required this.circleAvatarLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(
                image,
              ),
              backgroundColor: Color(0xFFF9F9F9),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              circleAvatarLabel,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 32.0,
            )
          ],
        ),
      ],
    );
  }
}
