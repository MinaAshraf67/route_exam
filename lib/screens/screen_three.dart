import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});
  static const String routeName = 'screenThree';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
        actions: [],
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
