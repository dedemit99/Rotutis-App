import 'package:flutter/material.dart';
import 'package:rotutis_app/pages/workout/workout_session_page.dart';
import 'package:rotutis_app/utils/app_colors.dart';
import 'package:rotutis_app/utils/app_text_style.dart';
import 'package:rotutis_app/widgets/program_card.dart';

class WorkoutDetailPage extends StatelessWidget {
  final String title;

  const WorkoutDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              //* HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: AppColors.white),
                  ),

                  Text('Detail', style: AppTextStyle.heading2),

                  const Icon(Icons.more_vert, color: AppColors.white),
                ],
              ),

              const SizedBox(height: 20),

              //* IMAGE PLACEHOLDER
              Container(
                height: 220,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: AppColors.darkGrey,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    color: AppColors.white,
                    size: 70,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              //* TITLE
              Text(title, style: AppTextStyle.heading1),

              const SizedBox(height: 5),
              //* SUBTITLE
              const Text(
                'Cardio',
                style: TextStyle(color: AppColors.darkGrey, fontSize: 20),
              ),

              const SizedBox(height: 5),
              //* STATS
              Row(
                children: [
                  buildStatCard(Icons.timer, '1h 42m'),
                  const SizedBox(height: 12),
                  buildStatCard(Icons.local_fire_department, '275 kcal'),
                ],
              ),

              const SizedBox(height: 24),

              //* DESCRIPTION
              const Text(
                'A push-up workout focuses on training session focused on exercises that involve pushing movements.',
                style: TextStyle(color: AppColors.white, height: 1.5),
              ),

              const SizedBox(height: 30),

              //* BUTTON
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.orange,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),

                      child: const Text('Watch Later'),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},

                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.white),

                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),

                      child: const Text(
                        'Share To Friend',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ProgramCard(
                title: title,
                subtitle: 'Endurance Exercise',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => WorkoutSessionPage(title: title),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//* REUSABLE STATE CARD
Widget buildStatCard(IconData icon, String value) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.orange),

          const SizedBox(width: 10),

          Text(value, style: TextStyle(color: AppColors.white)),
        ],
      ),
    ),
  );
}
