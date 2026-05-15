import 'package:flutter/material.dart';
import 'package:rotutis_app/utils/app_colors.dart';
import 'package:rotutis_app/utils/app_text_style.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          // PROFILE IMAGE
          CircleAvatar(
            radius: 40,
            backgroundColor: AppColors.primary,
            child: const Icon(Icons.person, size: 40, color: Colors.black),
          ),

          const SizedBox(height: 16),

          // NAME
          Text('Rizki', style: AppTextStyle.heading4),

          const SizedBox(height: 6),

          // EMAIL
          Text('rizki@gmail.com', style: AppTextStyle.bodySmall),
        ],
      ),
    );
  }
}
