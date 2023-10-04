import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_exam/shared/constant/image_slider.dart';

import 'package:route_exam/widgets/my_circle_avatar_widget.dart';
import 'package:route_exam/widgets/my_exercise_widget.dart';

// ignore: use_key_in_widget_constructors
class ScreenOne extends StatefulWidget {
  static const String routeName = 'screenOne';

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int index = 0;
  CarouselController? controller;

  int current = 0;

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
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
                    )),
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
              myCircleAvatarWidget(),
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
              MyExerciseWidget.myFirstExerciseWidget(),
              const SizedBox(
                height: 16.0,
              ),
              MyExerciseWidget.mySecondExerciseWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
