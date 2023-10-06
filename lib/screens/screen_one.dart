import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_exam/screens/screen_two.dart';
import 'package:route_exam/shared/constant/image_slider.dart';
import 'package:route_exam/shared/my_circle_avatar.dart';
import 'package:route_exam/shared/my_exercise.dart';

class ScreenOne extends StatefulWidget {
  static const String routeName = 'screenOne';

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  CarouselController? controller;

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            Navigator.pushNamed(context, ScreenTwo.routeName);
          });
        },
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.blueGrey[400],
        showUnselectedLabels: false,
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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35.0),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Moody',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    const Spacer(),
                    const Badge(
                      child: Image(
                        image: AssetImage('assets/images/notficationIcon.png'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'Sara Rose',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'How are you feeling today ?',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                children: [
                  MyCircleAvatar(
                    image: 'assets/images/circleIcon1.png',
                    circleAvatarLabel: 'Love',
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  MyCircleAvatar(
                    image: 'assets/images/circleIcon2.png',
                    circleAvatarLabel: 'Cool',
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  MyCircleAvatar(
                    image: 'assets/images/circleIcon3.png',
                    circleAvatarLabel: 'Happy',
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  MyCircleAvatar(
                    image: 'assets/images/circleIcon4.png',
                    circleAvatarLabel: 'Sad',
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more >',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.green[700],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  },
                  aspectRatio: 2,
                ),
                items: imgList
                    .map((item) => Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 5.0, color: Colors.transparent),
                          ),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                item,
                                fit: BoxFit.fill,
                                width: 1000,
                                height: 600,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller?.animateToPage(entry.key),
                    child: Container(
                      width: 6.0,
                      height: 6.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : const Color(0XFF98A2B3))
                              .withOpacity(current == entry.key ? 1.0 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See more >',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.green[700],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
