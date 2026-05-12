import 'package:flutter/material.dart';
import '../../utils/app_text_style.dart';

class ActivityHistoryCard extends StatelessWidget {
  final String title;
  final String date;
  final String calories;
  final String duration;

  const ActivityHistoryCard({
    super.key,
    required this.title,
    required this.date,
    required this.calories,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Color(0xFF262626),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          // ==== ICON =====
          Container(
            width: 60,
            height: 60,

            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12),
            ),

            child: const Icon(Icons.directions_run, color: Colors.white),
          ),

          const SizedBox(width: 16),
          // ===== CONTENT =====
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(title, style: AppTextStyle.bodyLarge),

                const SizedBox(height: 6),

                Text(date, style: AppTextStyle.bodyLarge),

                const SizedBox(height: 12),

                Row(
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: Colors.orange,
                      size: 18,
                    ),

                    const SizedBox(width: 4),

                    Text(calories, style: AppTextStyle.bodyLarge),

                    const SizedBox(width: 20),

                    const Icon(Icons.timer, color: Colors.blue, size: 18),

                    const SizedBox(width: 4),

                    Text(duration, style: AppTextStyle.bodyLarge),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
