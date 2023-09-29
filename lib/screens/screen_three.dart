import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  static const String routeName = 'screenTwo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
        actions: [],
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
