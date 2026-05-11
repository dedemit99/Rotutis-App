import 'package:flutter/material.dart';

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Icon(Icons.arrow_back, color: Colors.white),

        Text(
          'History',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        Icon(Icons.more_vert, color: Colors.white),
      ],
    );
  }
}
