import 'package:flutter/material.dart';

void main() {
  runApp(const RotutisApp());
}

class RotutisApp extends StatelessWidget {
  const RotutisApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotutis App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 23, 21, 21),
        appBar: AppBar(title: const Text('Rotutis App')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Hello Rizki',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Ready for your run today?',
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
