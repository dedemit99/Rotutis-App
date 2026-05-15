import 'package:flutter/material.dart';
import 'package:rotutis_app/pages/workout/workout_detail_page.dart';
import '../../widgets/program_card.dart';
import '../../utils/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // ===== GREETING =====
            const SizedBox(height: 20),
            const Text('Hello Rizki', style: AppTextStyle.heading3),

            const SizedBox(height: 10),

            const Text(
              'Ready for your run today?',
              style: AppTextStyle.heading3,
            ),
            // ===== GREETING =====

            // ===== STATUS CARD =====
            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 35, 35, 35),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(
                    children: const [
                      Text('15,5', style: AppTextStyle.heading2),

                      const SizedBox(height: 5),

                      Text('KM', style: AppTextStyle.heading3),
                    ],
                  ),

                  Column(
                    children: const [
                      Text('52', style: AppTextStyle.heading2),

                      const SizedBox(height: 5),

                      Text('MIN', style: AppTextStyle.heading3),
                    ],
                  ),

                  Column(
                    children: const [
                      Text('820', style: AppTextStyle.heading2),

                      const SizedBox(height: 5),

                      Text('CAL', style: AppTextStyle.heading3),
                    ],
                  ),
                ],
              ),
            ),
            // ===== STATUS CARD =====

            // ===== TODAY ACTIVITY =====
            const SizedBox(height: 30),

            const Text('Today Activity', style: AppTextStyle.heading2),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 35, 35),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Container(
                padding: const EdgeInsets.all(20),
                height: 100,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Column(
                      children: [
                        Text('Average', style: TextStyle(color: Colors.black)),

                        // const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              '15',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'km/h',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text('Distance', style: TextStyle(color: Colors.black)),
                        Row(
                          children: [
                            Text(
                              '6',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'km',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          'Total Calories',
                          style: TextStyle(color: Colors.black),
                        ),

                        Row(
                          children: [
                            Text(
                              '220',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'kCal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ===== TODAY ACTIVITY =====

            // ===== YOUR PROGRAMS CARDS =====
            const SizedBox(height: 30),

            const Text(
              'Your Programs',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ProgramCard(
              title: 'Running',
              subtitle: '7 km / 49 min',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WorkoutDetailPage(title: 'Running'),
                  ),
                );
              },
            ),
            ProgramCard(
              title: 'Push Up',
              subtitle: '40 km / 20 min',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WorkoutDetailPage(title: 'Push Up'),
                  ),
                );
              },
            ),
            ProgramCard(
              title: 'Cycling',
              subtitle: '12 km / 1 hour ',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WorkoutDetailPage(title: 'Cycling'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
