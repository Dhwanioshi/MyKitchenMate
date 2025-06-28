import 'package:flutter/material.dart';
import 'package:mykitchenapp/dummy_data/sample_recipes.dart';
import 'package:mykitchenapp/screens/Profile/edit_profile.dart';
import 'package:mykitchenapp/screens/settings/history.dart';
import 'package:mykitchenapp/screens/settings/setting.dart';
import 'package:mykitchenapp/widgets/appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Profile"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/Profile.png"),
                ),
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Color.fromRGBO(86, 106, 79, 1),
                  child: const Icon(Icons.edit, color: Colors.white, size: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),

            const Text(
              "Dhwani Joshi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 30),

            buildMenuTile(
              icon: Icons.person_outline,
              title: "Edit Profile",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => EditProfilePage()),
                );
              },
            ),
            buildMenuTile(
              icon: Icons.notifications_none,
              title: "History",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) =>
                        History(title: "History", listOfRecipes: dummyRecipes),
                  ),
                );
              },
            ),
            buildMenuTile(
              icon: Icons.settings,
              title: "Settings",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => SettingsScreen()),
                );
              },
            ),
            buildMenuTile(
              icon: Icons.lock_outline,
              title: "Change Password",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 6),
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: Color.fromRGBO(86, 106, 79, 1),
        child: Icon(icon, color: Color.fromRGBO(255, 255, 255, 1)),
      ),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
