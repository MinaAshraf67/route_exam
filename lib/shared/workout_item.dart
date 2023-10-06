// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorkoutItem extends StatelessWidget {
  String choiceChipLabelText;
  String workoutName;
  String workoutDescription;
  String workoutImage;
  String time;
  WorkoutItem({
    Key? key,
    required this.choiceChipLabelText,
    required this.workoutName,
    required this.workoutDescription,
    required this.workoutImage,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 24.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FC),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChoiceChip(
            label: Text(
              choiceChipLabelText,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            selected: true,
            selectedColor: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color(0xFFE4E7EC),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            labelPadding: const EdgeInsets.all(8.0),
            elevation: 0.0,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    workoutName,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    workoutDescription,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12.0,
                        ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      const ImageIcon(
                        AssetImage('assets/images/clock.png'),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        time,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 12.0,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(workoutImage),
            ],
          ),
        ],
      ),
    );
  }
}
