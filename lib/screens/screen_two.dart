import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_exam/screens/screen_three.dart';
import 'package:route_exam/shared/my_workout_data.dart';
import 'package:route_exam/shared/workout_item.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = 'screenTwo';

  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              Navigator.pushNamed(context, ScreenThree.routeName);
            });
          },
          selectedItemColor: const Color(0xFF363F72),
          unselectedItemColor: const Color(0xFF667085),
          iconSize: 30.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: '•',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              label: '•',
              icon: Icon(
                Icons.grid_view_outlined,
              ),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              label: '•',
              icon: Icon(
                Icons.calendar_today_outlined,
              ),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              label: '•',
              icon: Icon(
                Icons.person,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
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
                      const CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          'assets/images/workoutCircleAvatar.png',
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Jade',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            'Ready to workout?',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Badge(
                        child: Image(
                          image:
                              AssetImage('assets/images/notficationIcon.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48.0,
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FC),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyWorkoutData(
                          workoutImage: 'heart.png',
                          workoutText: 'Heart Rate',
                          workoutDataNum: '81',
                          workoutDataUnit: 'BPM',
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: VerticalDivider(
                            color: Color(0xFFD9D9D9),
                            width: 1.0,
                            thickness: 1,
                          ),
                        ),
                        MyWorkoutData(
                          workoutImage: 'list.png',
                          workoutText: 'To-do',
                          workoutDataNum: '32,5',
                          workoutDataUnit: '%',
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: VerticalDivider(
                            width: 1.0,
                            color: Color(0xFFD9D9D9),
                            thickness: 1,
                          ),
                        ),
                        MyWorkoutData(
                          workoutImage: 'Frame.png',
                          workoutText: 'Calo',
                          workoutDataNum: '1000',
                          workoutDataUnit: 'Cal',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Workout Programs',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TabBar(
                  indicatorColor: const Color(0xFF363F72),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: const Color(0xff363F72),
                  unselectedLabelColor: const Color(0xff667085),
                  labelPadding: const EdgeInsets.only(
                    bottom: 8.0,
                  ),
                  tabs: [
                    Text(
                      'All Type',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Full Body',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Upper',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'Lower',
                      style: GoogleFonts.inter(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                WorkoutItem(
                  choiceChipLabelText: '7 days',
                  workoutName: 'Morning Yoga',
                  workoutDescription: 'Improve mental focus.',
                  workoutImage: 'assets/images/workoutImage1.png',
                  time: '30 mins',
                ),
                const SizedBox(
                  height: 10.0,
                ),
                WorkoutItem(
                  choiceChipLabelText: '3 days',
                  workoutName: 'Plank Exercise',
                  workoutDescription: 'Improve posture and stability.',
                  workoutImage: 'assets/images/workoutImage2.png',
                  time: '30 mins',
                ),
                const SizedBox(
                  height: 24.0,
                ),
                WorkoutItem(
                  choiceChipLabelText: '7 days',
                  workoutName: 'Morning Yoga',
                  workoutDescription: 'Improve mental focus.',
                  workoutImage: 'assets/images/workoutImage1.png',
                  time: '30 mins',
                ),
                const SizedBox(
                  height: 10.0,
                ),
                WorkoutItem(
                  choiceChipLabelText: '3 days',
                  workoutName: 'Plank Exercise',
                  workoutDescription: 'Improve posture and stability.',
                  workoutImage: 'assets/images/workoutImage2.png',
                  time: '30 mins',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
