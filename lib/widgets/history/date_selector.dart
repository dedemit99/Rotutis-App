import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final List<Map<String, dynamic>> dates;

  const DateSelector({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.dates,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,

      // Dynamic horizontal lists
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,

        // Create Item
        itemBuilder: (context, index) {
          // current date data
          final date = dates[index];

          // Gesture
          return GestureDetector(
            onTap: () {
              onTap(index);
            },

            // Date Card
            child: DateItem(
              day: date['day']!,
              label: date['label']!,
              isSelected: selectedIndex == index,
            ),
          );
        },
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
