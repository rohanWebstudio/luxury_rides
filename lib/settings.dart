import 'package:flutter/material.dart';

class SettingsPage
    extends
        StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<
    SettingsPage
  >
  createState() =>
      _SettingsPageState();
}

class _SettingsPageState
    extends
        State<
          SettingsPage
        > {
  String
  selectedLanguage =
      "English";

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
          "Settings",
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
              Expanded(
                child: ListView(
                  children: [
                    _menuItem(
                      Icons.lock_reset,
                      "Change Password",
                      onTap: () {
                        _showChangePasswordDialog();
                      },
                    ),
                    _menuItem(
                      Icons.language,
                      "Language",
                      onTap: () {
                        _showLanguageDialog();
                      },
                    ),
                    _menuItem(
                      Icons.notifications,
                      "Notifications and Promotions",
                      route: '/edit_notification',
                    ),
                    _menuItem(
                      Icons.delete_forever,
                      "Delete Account",
                      onTap: () {},
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
    title, {
    VoidCallback?
    onTap,
    String?
    route,
  }) {
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
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
        size: 16,
      ),
      onTap: () {
        if (onTap !=
            null) {
          onTap();
        } else if (route !=
            null) {
          Navigator.pushNamed(
            context,
            route,
          );
        }
      },
    );
  }

  /// Change Password Dialog
  void
  _showChangePasswordDialog() {
    showDialog(
      context: context,
      builder:
          (
            context,
          ) => Dialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Change Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _inputField(
                    "Old Password",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  _inputField(
                    "New Password",
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  _inputField(
                    "Confirm Password",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.amber,
                          Colors.orange,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: const Text(
                        "Confirm",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  void
  _showLanguageDialog() {
    showDialog(
      context: context,
      builder:
          (
            context,
          ) => Dialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Change Language",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RadioListTile<
                    String
                  >(
                    value: "English",
                    groupValue: selectedLanguage,
                    activeColor: Colors.amber,
                    title: const Text(
                      "English",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onChanged:
                        (
                          value,
                        ) {
                          setState(
                            () => selectedLanguage = value!,
                          );
                          Navigator.pop(
                            context,
                          );
                        },
                  ),
                  RadioListTile<
                    String
                  >(
                    value: "Arabic",
                    groupValue: selectedLanguage,
                    activeColor: Colors.amber,
                    title: const Text(
                      "Arabic",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onChanged:
                        (
                          value,
                        ) {
                          setState(
                            () => selectedLanguage = value!,
                          );
                          Navigator.pop(
                            context,
                          );
                        },
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Widget
  _inputField(
    String
    hint,
  ) {
    return TextField(
      obscureText: true,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amber,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amber,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
    );
  }
}
