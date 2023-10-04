import 'package:flutter/material.dart';
import 'package:route_exam/shared/my_circle_avatar.dart';

Widget myCircleAvatarWidget() {
  return Row(
    children: [
      MyCircleAvatar(
        image: 'assets/images/circleIcon1.png',
        circleAvatarLabel: 'Love',
      ),
      const SizedBox(
        width: 30.0,
      ),
      MyCircleAvatar(
        image: 'assets/images/circleIcon2.png',
        circleAvatarLabel: 'Cool',
      ),
      const SizedBox(
        width: 30.0,
      ),
      MyCircleAvatar(
        image: 'assets/images/circleIcon3.png',
        circleAvatarLabel: 'Happy',
      ),
      const SizedBox(
        width: 30.0,
      ),
      MyCircleAvatar(
        image: 'assets/images/circleIcon4.png',
        circleAvatarLabel: 'Sad',
      ),
    ],
  );
}
