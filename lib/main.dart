import 'package:flutter/material.dart';
import 'package:route_exam/screens/screen_one.dart';
import 'package:route_exam/screens/screen_three.dart';
import 'package:route_exam/screens/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ScreenOne.routeName,
      routes: {
        ScreenOne.routeName: (context) => ScreenOne(),
        ScreenTwo.routeName: (context) => ScreenTwo(),
        ScreenThree.routeName: (context) => ScreenThree(),
      },
    );
  }
}
