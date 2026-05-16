import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rotutis_app/utils/app_colors.dart';
import 'package:rotutis_app/utils/app_text_style.dart';
import 'workout_recap_page.dart';

class WorkoutSessionPage extends StatefulWidget {
  final String title;

  const WorkoutSessionPage({super.key, required this.title});

  @override
  State<WorkoutSessionPage> createState() => _WorkoutSessionPageState();
}

class _WorkoutSessionPageState extends State<WorkoutSessionPage> {
  int seconds = 0;

  Timer? timer;

  bool isRunning = false;

  //* START TIMER
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        seconds++;
      });
    });

    isRunning = true;
  }

  //* PAUSE TIMER
  void pauseTimer() {
    timer?.cancel();
    isRunning = false;
  }

  //* FORMAT TIME
  String formatTime() {
    final hours = (seconds ~/ 3600).toString().padLeft(2, '0');

    final minutes = ((seconds % 3600) ~/ 60).toString().padLeft(2, '0');

    final secs = (seconds % 60).toString().padLeft(2, '0');

    return '$hours:$minutes:$secs';
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(widget.title, style: AppTextStyle.heading1),

              const SizedBox(height: 40),

              //* TIMER
              Text(formatTime(), style: AppTextStyle.display),

              const SizedBox(height: 40),

              //* DUMMY STATS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  buildStat('Distance', '2.4 km'),

                  buildStat('Calories', '124 kcal'),
                ],
              ),

              const SizedBox(height: 60),
              //* BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (isRunning) {
                        pauseTimer();
                      } else {
                        startTimer();
                      }

                      setState(() {});
                    },

                    child: Text(isRunning ? 'Pause' : 'Start'),
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WorkoutRecapPage(
                            title: widget.title,
                            duration: formatTime(),
                          ),
                        ),
                      );
                    },
                    child: const Text('Finish'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//* REUSABLE STAT
Widget buildStat(String title, String value) {
  return Column(
    children: [
      Text(value, style: AppTextStyle.heading2),

      const SizedBox(height: 6),

      Text(title, style: const TextStyle(color: AppColors.darkGrey)),
    ],
  );
}
