import 'package:flutter/material.dart';

//* REUSABLE WIDGETS
class ProgramCard extends StatelessWidget {
  final String title;
  final String subtitle;

  final VoidCallback onTap;

  const ProgramCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: Color.fromARGB(255, 35, 35, 35),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(subtitle, style: const TextStyle(color: Colors.white70)),
              ],
            ),

            Container(
              width: 50,
              height: 50,

              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Icon(Icons.play_arrow, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
