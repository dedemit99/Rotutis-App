import 'package:flutter/material.dart';
import 'package:rotutis_app/pages/workout/workout_detail_page.dart';
import 'package:rotutis_app/utils/app_colors.dart';
import 'package:rotutis_app/utils/app_text_style.dart';

class WorkoutRecapPage extends StatelessWidget {
  final String title;
  final String duration;

  const WorkoutRecapPage({
    super.key,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              //* SUCCESS ICON
              const Icon(Icons.check_circle, color: Colors.green, size: 100),

              const SizedBox(height: 30),

              //* TITLE
              const Text('Workout Completed', style: AppTextStyle.heading1),

              const SizedBox(height: 12),

              Text(title, style: AppTextStyle.label),

              const SizedBox(height: 40),

              //* RECAP CARD
              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(24),

                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    buildRecapItem('Duration', duration),

                    const SizedBox(height: 20),

                    buildRecapItem('Calories', '320 kcal'),

                    const SizedBox(height: 20),

                    buildRecapItem('Distance', '5.8 km'),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              //* BUTTON
              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orange,

                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Back To Home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//* REUSABLE RECAP ITEM
Widget buildRecapItem(String label, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: const TextStyle(color: AppColors.darkGrey, fontSize: 16),
      ),

      Text(value, style: AppTextStyle.heading4),
    ],
  );
}
