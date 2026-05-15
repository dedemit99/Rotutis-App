import 'package:flutter/material.dart';
import '../../widgets/profile/profile_card.dart';
import '../../widgets/profile/profile_header.dart';
import '../../widgets/profile/profile_menu_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // HEADER
              const ProfileHeader(),

              const SizedBox(height: 30),

              // PROFILE CARD
              const ProfileCard(),

              const SizedBox(height: 30),

              // MENU SECTION
              const ProfileMenuTile(
                title: 'Edit Profile',
                icon: Icons.person_outline,
              ),

              const ProfileMenuTile(
                title: 'Notifications',
                icon: Icons.notifications_none,
              ),

              const ProfileMenuTile(
                title: 'Settings',
                icon: Icons.settings_outlined,
              ),

              const ProfileMenuTile(title: 'Logout', icon: Icons.logout),
            ],
          ),
        ),
      ),
    );
  }
}
