import 'package:flutter/material.dart';

class NotificationsPage
    extends
        StatefulWidget {
  const NotificationsPage({
    super.key,
  });

  @override
  State<
    NotificationsPage
  >
  createState() =>
      _NotificationsPageState();
}

class _NotificationsPageState
    extends
        State<
          NotificationsPage
        > {
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
          "Notifications",
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
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        "Mail",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "We’ve just reached out 30k goal raised for charity! We’re so proud of the team!",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white70,
                          size: 16,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        "Mail",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "We’ve just reached out 30k goal raised for charity! We’re so proud of the team!",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white70,
                          size: 16,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                      title: const Text(
                        "Mail",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "We’ve just reached out 30k goal raised for charity! We’re so proud of the team!",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white70,
                          size: 16,
                        ),
                        onPressed: () {},
                      ),
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
}
