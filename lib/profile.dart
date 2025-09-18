import 'package:flutter/material.dart';

class ProfilePage
    extends
        StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<
    ProfilePage
  >
  createState() =>
      _ProfilePageState();
}

class _ProfilePageState
    extends
        State<
          ProfilePage
        > {
  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/84/8f/3b/848f3b92a3e2a6040faccad5888f851e.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Hi i am John",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/edit_profile',
                          );
                        },
                        child: const Text(
                          'Edit Profile',
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView(
                  children: [
                    _menuItem(
                      Icons.insert_drive_file,
                      "Documents",
                      '/documents',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.rate_review,
                      "Review",
                      '/review',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.notifications,
                      "Notifications",
                      '/notifications',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.account_balance_wallet,
                      "Payment statements",
                      '/paymentstatements',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.history,
                      "Ride history",
                      '/ride_history',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.settings,
                      "Settings",
                      '/settings',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.privacy_tip,
                      "Privacy policy",
                      '/privacy_policy',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.help_outline,
                      "Help",
                      '/help',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.call,
                      "Emergency contacts",
                      '/emergencycontacts',
                      Colors.white,
                    ),
                    _menuItem(
                      Icons.logout,
                      'Logout',
                      '/signin',
                      Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget
  _menuItem(
    IconData
    icon,
    String
    title,
    String
    route,
    Color
    itemColor,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: itemColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: itemColor,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 16,
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          route,
        );
      },
    );
  }
}
