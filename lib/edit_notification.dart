import 'package:flutter/material.dart';

class EditNotification
    extends
        StatefulWidget {
  const EditNotification({
    super.key,
  });

  @override
  State<
    EditNotification
  >
  createState() =>
      _EditNotificationState();
}

class _EditNotificationState
    extends
        State<
          EditNotification
        > {
  bool
  notificationsEnabled =
      true;
  bool
  emailsEnabled =
      false;
  bool
  whatsappEnabled =
      true;

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(
            context,
          ),
        ),
        title: const Text(
          "Notifications and Promotions",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                "Promotions and Notifications",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Receive updates about our newest promotions and special offers",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: [
                    _menuItem(
                      Icons.notifications,
                      "Notifications",
                      notificationsEnabled,
                      (
                        value,
                      ) {
                        setState(
                          () {
                            notificationsEnabled = value;
                          },
                        );
                      },
                    ),
                    _menuItem(
                      Icons.email,
                      "Emails",
                      emailsEnabled,
                      (
                        value,
                      ) {
                        setState(
                          () {
                            emailsEnabled = value;
                          },
                        );
                      },
                    ),
                    _menuItem(
                      Icons.message,
                      "WhatsApp",
                      whatsappEnabled,
                      (
                        value,
                      ) {
                        setState(
                          () {
                            whatsappEnabled = value;
                          },
                        );
                      },
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
    bool
    value,
    ValueChanged<
      bool
    >
    onChanged,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.amber,
      ),
    );
  }
}
