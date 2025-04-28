import 'package:flutter/material.dart';

class ProfileTap extends StatelessWidget {
  static const String userName = "Amr Khaled";
  static const String userEmail = "amr.khaled@gmail.com";

  final Color primaryColor;
  final Color accentColor;
  final Color backgroundColor;

  const ProfileTap({
    Key? key,
    required this.primaryColor,
    required this.accentColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: primaryColor,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Text(
                  userName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: accentColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  userEmail,
                  style: TextStyle(
                    fontSize: 14,
                    color: accentColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                _buildProfileOption(
                  context,
                  icon: Icons.local_shipping,
                  title: "Your Orders",
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Viewing your orders..."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
                _buildProfileOption(
                  context,
                  icon: Icons.settings,
                  title: "Account Settings",
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Opening account settings..."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
                _buildProfileOption(
                  context,
                  icon: Icons.exit_to_app,
                  title: "Logout",
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Logging out..."),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Signing out..."),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 16,
                  color: accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileOption(BuildContext context,
      {required IconData icon,
        required String title,
        required VoidCallback onTap}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: accentColor, size: 30),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: accentColor,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}