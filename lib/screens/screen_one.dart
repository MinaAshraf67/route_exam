import 'package:flutter/material.dart';
import 'package:route_exam/shared/circle_avatar.dart';
import 'package:route_exam/shared/exercise.dart';

// ignore: use_key_in_widget_constructors
class ScreenOne extends StatefulWidget {
  static const String routeName = 'screenOne';

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.blueGrey[400],
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
        toolbarHeight: 80.0,
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Moody',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  'Sara Rose',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Text(
              'How are you feeling today ?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCircleAvatar(
                  image: 'assets/images/circleIcon2.png',
                  circleAvatarLabel: 'Love',
                ),
                MyCircleAvatar(
                  image: 'assets/images/circleIcon3.png',
                  circleAvatarLabel: 'Cool',
                ),
                MyCircleAvatar(
                  image: 'assets/images/circleIcon4.png',
                  circleAvatarLabel: 'Happy',
                ),
                MyCircleAvatar(
                  image: 'assets/images/circleIcon1.png',
                  circleAvatarLabel: 'Sad',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Feature',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more >',
                    style: TextStyle(
                        color: Colors.green[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Center(
              child: Image.asset(
                'assets/images/moodImage.png',
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Center(
              child: Image.asset(
                'assets/images/indictaor.png',
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Exercise',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See more >',
                    style: TextStyle(
                        color: Colors.green[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyExercise(
                  image: 'assets/images/relaxIcon.png',
                  text: "Relaxation",
                  backgroundColor: Colors.purple.withOpacity(0.1),
                  imageColor: Colors.purple[300],
                ),
                MyExercise(
                  image: 'assets/images/meditateIcon.png',
                  text: "Meditation",
                  backgroundColor: Colors.pink.withOpacity(0.1),
                  imageColor: Colors.pink[200],
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyExercise(
                  image: 'assets/images/beathingIcon.png',
                  text: "Beathing",
                  backgroundColor: Colors.orange.withOpacity(0.1),
                  imageColor: Colors.orange[300],
                ),
                MyExercise(
                  image: 'assets/images/yogaIcon.png',
                  text: "Yoga",
                  backgroundColor: Colors.lightBlue.withOpacity(0.1),
                  imageColor: Colors.lightBlue[300],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
