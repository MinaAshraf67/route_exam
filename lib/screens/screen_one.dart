import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});
  static const String routeName = 'screenOne';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen one'),
        actions: [],
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
