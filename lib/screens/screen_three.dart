import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ScreenThree extends StatelessWidget {
  static const String routeName = 'screenThree';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
        actions: [],
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
