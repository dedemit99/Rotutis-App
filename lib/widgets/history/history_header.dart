import 'package:flutter/material.dart';
import '../../utils/app_text_style.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),

        Text('History', style: AppTextStyle.heading3),

        Icon(Icons.more_vert, color: Colors.white),
      ],
    );
  }
}
