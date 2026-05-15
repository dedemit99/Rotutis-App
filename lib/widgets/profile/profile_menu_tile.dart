import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_style.dart';

class ProfileMenuTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const ProfileMenuTile({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),

          const SizedBox(width: 16),

          Expanded(child: Text(title, style: AppTextStyle.bodyLarge)),

          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
