// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200]!,
              width: 10.0,
            ),
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage(
              image,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          circleAvatarLabel,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
