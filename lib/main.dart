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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                // ===== GREETING =====
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
                // ===== GREETING =====

                // ===== STATUS CARD =====
                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 35, 35, 35),
                    borderRadius: BorderRadius.circular(40),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Column(
                        children: const [
                          Text(
                            '12,5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text('KM', style: TextStyle(color: Colors.white70)),
                        ],
                      ),

                      Column(
                        children: const [
                          Text(
                            '52',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text('MIN', style: TextStyle(color: Colors.white70)),
                        ],
                      ),

                      Column(
                        children: const [
                          Text(
                            '820',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text('CAL', style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ],
                  ),
                ),
                // ===== STATUS CARD =====

                // ===== YOUR PROGRAMS CARDS =====
                const SizedBox(height: 30),

                const Text(
                  'Your Programs',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const ProgramCard(title: 'Running', subtitle: '7 km / 49 min'),
                const ProgramCard(title: 'Push Up', subtitle: '40 km / 20 min'),
                const ProgramCard(
                  title: 'Cycling',
                  subtitle: '12 km / 1 hour ',
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,

          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white54,

          currentIndex: 0,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

// REUSABLE WIDGETS
class ProgramCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const ProgramCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
