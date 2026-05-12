import 'package:flutter/material.dart';
import 'package:rotutis_app/utils/app_colors.dart';
import 'pages/home/home_page.dart';
import 'pages/history/history_page.dart';
import 'pages/profile/profile_page.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const RotutisApp());
}

class RotutisApp extends StatefulWidget {
  const RotutisApp({super.key});

  @override
  State<RotutisApp> createState() => _RotutisAppState();
}

class _RotutisAppState extends State<RotutisApp> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      title: 'Rotutis App',
      home: Scaffold(
        backgroundColor: AppColors.background,
        // appBar: AppBar(title: const Text('Rotutis App')),
        body: pages[selectedIndex],
        // MainNavigationPage()
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,

          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: AppColors.background,

          selectedItemColor: AppColors.orange,
          unselectedItemColor: AppColors.lightGrey,

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
