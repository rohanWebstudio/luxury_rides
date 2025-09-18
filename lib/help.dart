import 'package:flutter/material.dart';

class HelpPage
    extends
        StatefulWidget {
  const HelpPage({
    super.key,
  });

  @override
  State<
    HelpPage
  >
  createState() =>
      _HelpPageState();
}

class _HelpPageState
    extends
        State<
          HelpPage
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
          "Help",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: ListView(
          children: [
            const Text(
              'Helps',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            _item(
              'Service Standard',
            ),
            _item(
              'Rider does not respond',
            ),
            _item(
              'How to leave a review for rider',
            ),
            _item(
              'How to complain',
            ),
            _item(
              'How to cancel a ride',
            ),
            _item(
              'How to update profile',
            ),
            _item(
              'App not working properly',
            ),
            _item(
              'Payment not received',
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Feedback',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                Text(
                  'Technical support chat',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  'Write to mail',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget
  _item(
    String
    title,
  ) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.amber,
        size: 16,
      ),
      onTap: () {},
    );
  }
}
