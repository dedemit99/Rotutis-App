import 'package:flutter/material.dart';
import '../../widgets/history/history_header.dart';
import '../../widgets/history/summary_card.dart';
import '../../widgets/history/activity_history_card.dart';
import '../../widgets/history/date_selector.dart';

final List<Map<String, String>> activities = [
  {
    'title': 'Running 6.2 km',
    'date': 'Today, 08:20 AM',
    'calories': '275 kcal',
    'duration': '1h 42m',
    'day': 'wed',
  },

  {
    'title': 'Hiking 8,2 km',
    'date': 'Yesterday',
    'calories': '320 kcal',
    'duration': '2h 10m',
    'day': 'Tue',
  },

  {
    'title': 'Sprint Training 100 m',
    'date': 'Monday',
    'calories': '180 kcal',
    'duration': '45m',
    'day': 'Mon',
  },
];

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int selectedDateIndex = 0;

  final List<Map<String, String>> dates = [
    {'day': '19', 'label': 'Mon'},
    {'day': '20', 'label': 'Tue'},
    {'day': '21', 'label': 'Wed'},
    {'day': '22', 'label': 'Thu'},
    {'day': '23', 'label': 'Fri'},
    {'day': '24', 'label': 'Sat'},
    {'day': '25', 'label': 'San'},
  ];

  List<Map<String, dynamic>> get filteredActivities {
    final selectedDay = dates[selectedDateIndex]['label'];

    return activities.where((activity) {
      return activity['day'] == selectedDay;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171515),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // ===== HEADER =====
              SizedBox(height: 20),
              const HistoryHeader(),

              // ===== DATE SELECTOR =====
              SizedBox(height: 20),
              const DateSelector(),

              // ===== SUMMARY CARD =====
              SizedBox(height: 20),
              const SummaryCard(),

              // ===== ACTIVITY LIST =====
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: activities.map((activity) {
                    return ActivityHistoryCard(
                      title: activity['title']!,
                      date: activity['date']!,
                      calories: activity['calories']!,
                      duration: activity['duration']!,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
