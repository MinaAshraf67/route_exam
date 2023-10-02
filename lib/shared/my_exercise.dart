// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyExercise extends StatelessWidget {
  String image;
  String text;
  Color backgroundColor;
  Color? imageColor;
  MyExercise({
    Key? key,
    required this.imageColor,
    required this.backgroundColor,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 60.0,
      width: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          ImageIcon(
            color: imageColor,
            AssetImage(
              image,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
