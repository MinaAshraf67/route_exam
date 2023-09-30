import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = 'screenTwo';

  @override
  State<ScreenTwo> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenTwo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey[500],
        iconSize: 30.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '•',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: '•',
            icon: Icon(Icons.grid_view_outlined),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: '•',
            icon: Icon(Icons.calendar_today_outlined),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: '•',
            icon: Icon(Icons.person),
            backgroundColor: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100.0,
        leading: const CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/workoutCircleAvatar.png',
          ),
        ),
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Hello, Jade',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            Text(
              'Ready to workout?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: const Badge(
                child: Image(
                  image: AssetImage('assets/images/Icon.png'),
                ),
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
    );
  }
}
