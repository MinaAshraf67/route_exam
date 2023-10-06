import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_exam/screens/screen_one.dart';
import 'package:route_exam/shared/constant/image_slider.dart';
import 'package:route_exam/shared/my_choice_chip.dart';

// ignore: use_key_in_widget_constructors
class ScreenThree extends StatefulWidget {
  static const String routeName = 'screenThree';

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  CarouselController? controller;

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 35.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ImageIcon(
                      color: Color(0xFFC9B4FF),
                      AssetImage(
                        'assets/images/aliceLogo.png',
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'AliceCare',
                      style: GoogleFonts.milonga(
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 14.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      width: 2.0,
                      color: const Color(0xFFD0D5DD),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0xFF667085),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Articles, Video, Audio and More,...',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: const Color(0xFF667085),
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyChoiceChip(
                      label: 'Discover',
                      isSelected: true,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    MyChoiceChip(
                      label: 'News',
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    MyChoiceChip(
                      label: 'Most Viewed',
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    MyChoiceChip(
                      label: 'Saved',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Topics',
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
                          color: const Color(0xFF5925DC),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
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
                  aspectRatio: 1.6,
                ),
                items: screenThreeImages
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
                height: 24.0,
              ),
              Text(
                'Get Tips',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Image.asset('assets/images/tipsDetails.png'),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cycle Phases and Period',
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
                          color: const Color(0xFF5925DC),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            Navigator.pushNamed(context, ScreenOne.routeName);
          });
        },
        selectedItemColor: const Color(0xFF6941C6),
        unselectedItemColor: const Color(0xFF475467),
        showUnselectedLabels: false,
        iconSize: 30.0,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/calendar.png'),
            ),
            label: ' ',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: ImageIcon(
              AssetImage('assets/images/grid.png'),
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: ImageIcon(
              AssetImage('assets/images/chat.png'),
            ),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
