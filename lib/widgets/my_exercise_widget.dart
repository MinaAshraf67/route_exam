import 'package:flutter/material.dart';
import 'package:route_exam/shared/my_exercise.dart';

class MyExerciseWidget {
  static Widget myFirstExerciseWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyExercise(
          image: 'assets/images/relaxIcon.png',
          text: "Relaxation",
          backgroundColor: const Color(0xfff9f5ff),
          imageColor: const Color(0xffB692F6),
        ),
        const SizedBox(
          width: 24.0,
        ),
        MyExercise(
          image: 'assets/images/meditateIcon.png',
          text: "Meditation",
          backgroundColor: const Color(0xfffdf2fa),
          imageColor: const Color(0xffFAA7E0),
        ),
      ],
    );
  }

  static Widget mySecondExerciseWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyExercise(
          image: 'assets/images/beathingIcon.png',
          text: "Beathing",
          backgroundColor: const Color(0xfffffaf5),
          imageColor: const Color(0xffFEB273),
        ),
        const SizedBox(
          width: 24.0,
        ),
        MyExercise(
          image: 'assets/images/yogaIcon.png',
          text: "Yoga",
          backgroundColor: const Color(0xfff0f9ff),
          imageColor: const Color(0xff7CD4FD),
        ),
      ],
    );
  }
}
