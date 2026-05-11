import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  const DateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,

      child: ListView(
        scrollDirection: Axis.horizontal,

        children: const [
          DateItem(day: '19', label: 'Mon', isSelected: false),
          DateItem(day: '20', label: 'Tue', isSelected: false),
          DateItem(day: '21', label: 'Wed', isSelected: true),
          DateItem(day: '22', label: 'Thu', isSelected: false),
          DateItem(day: '23', label: 'Fri', isSelected: false),
          DateItem(day: '24', label: 'Sat', isSelected: false),
          DateItem(day: '25', label: 'San', isSelected: false),
        ],
      ),
    );
  }
}

class DateItem extends StatelessWidget {
  final String day;
  final String label;
  final bool isSelected;

  const DateItem({
    super.key,
    required this.day,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(vertical: 10),

      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : const Color(0xFF262626),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            label,
            style: TextStyle(color: isSelected ? Colors.white : Colors.grey),
          ),
        ],
      ),
    );
  }
}
