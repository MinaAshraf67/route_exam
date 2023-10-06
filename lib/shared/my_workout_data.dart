import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyWorkoutData extends StatelessWidget {
  String workoutText;
  String workoutImage;
  String workoutDataNum;
  String workoutDataUnit;

  MyWorkoutData(
      {required this.workoutText,
      required this.workoutImage,
      required this.workoutDataNum,
      required this.workoutDataUnit,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                ImageIcon(
                  color: Color(0xff717BBC),
                  AssetImage('assets/images/$workoutImage'),
                ),
                Text(
                  workoutText,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                Text(
                  workoutDataNum,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  ' $workoutDataUnit',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
