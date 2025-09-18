import 'package:flutter/material.dart';

class BookingPage
    extends
        StatefulWidget {
  const BookingPage({
    super.key,
  });

  @override
  State<
    BookingPage
  >
  createState() =>
      _BookingPageState();
}

class _BookingPageState
    extends
        State<
          BookingPage
        >
    with
        SingleTickerProviderStateMixin {
  late TabController
  _tabController;

  @override
  void
  initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  Widget
  upcommingCard({
    bool
        paid =
        false,
  }) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "John Deo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "AED 150",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.calendar_today,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Aug 23, 2025 . 10:00 AM → Aug 23, 2025 . 3:00 PM",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Downtown → Dubai Marina",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.directions_car,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Bentley",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.phone,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "+971 123 456 789",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: paid
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 16,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Paid",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    )
                  : const Icon(
                      Icons.money_sharp,
                      color: Colors.green,
                      size: 22,
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget
  cancelledCard() {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "John Deo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "AED 00",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.calendar_today,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Aug 23, 2025 . 10:00 AM → Aug 23, 2025 . 3:00 PM",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Downtown → Dubai Marina",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.directions_car,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Audi",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.phone,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "+971 123 456 789",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 16,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget
  completedCard() {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "John Deo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "AED 150",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.calendar_today,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Aug 23, 2025 . 10:00 AM → Aug 23, 2025 . 3:00 PM",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Downtown → Dubai Marina",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.directions_car,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Bentley",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: const [
                Icon(
                  Icons.phone,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "+971 123 456 789",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 16,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Paid",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Column(
      children: [
        Material(
          color: Colors.black,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.amber,
            tabs: const [
              Tab(
                text: "Upcoming",
              ),
              Tab(
                text: "Canceled",
              ),
              Tab(
                text: "Completed",
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView(
                children: [
                  upcommingCard(),
                  upcommingCard(),
                  upcommingCard(
                    paid: true,
                  ),
                ],
              ),
              ListView(
                children: [
                  cancelledCard(),
                  cancelledCard(),
                  cancelledCard(),
                ],
              ),
              ListView(
                children: [
                  completedCard(),
                  completedCard(),
                  completedCard(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
