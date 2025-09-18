import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentStatementsPage
    extends
        StatelessWidget {
  const PaymentStatementsPage({
    super.key,
  });

  Widget
  buildSummaryCard(
    String
    title,
    String
    value,
  ) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            value,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget
  buildDaySection(
    String
    day,
    String
    amount,
    List<
      Map<
        String,
        String
      >
    >
    rides,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                day,
                style: GoogleFonts.inter(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                amount,
                style: GoogleFonts.inter(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        if (rides.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Text(
              "No activity",
              style: GoogleFonts.inter(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          )
        else
          Column(
            children: rides.map(
              (
                ride,
              ) {
                return ListTile(
                  leading: const Icon(
                    Icons.directions_car,
                    color: Colors.white,
                  ),
                  title: Text(
                    ride['title']!,
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    ride['time']!,
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Text(
                    ride['amount']!,
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        const Divider(
          color: Colors.grey,
          height: 1,
        ),
      ],
    );
  }

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
        title: Text(
          "Payment statements",
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(
            context,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Date Selector
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                ),
                Text(
                  "Aug 17 - Aug 23",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ],
            ),
          ),

          // Summary
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 14,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            child: Row(
              children: [
                buildSummaryCard(
                  "Earnings",
                  "AED 1000",
                ),
                buildSummaryCard(
                  "Online",
                  "3 hrs 5 min",
                ),
                buildSummaryCard(
                  "Rides",
                  "20",
                ),
              ],
            ),
          ),

          // Payment list
          Expanded(
            child: ListView(
              children: [
                buildDaySection(
                  "Sat, 17 Aug",
                  "AED 500",
                  [
                    {
                      "title": "Ride to Dubai Mall",
                      "time": "02:30 pm",
                      "amount": "AED 200",
                    },
                    {
                      "title": "Ride to Burj Khalifa",
                      "time": "02:30 pm",
                      "amount": "\$200",
                    },
                    {
                      "title": "Ride to Dubai Beach",
                      "time": "02:30 pm",
                      "amount": "\$200",
                    },
                    {
                      "title": "Ride to Dubai Mall",
                      "time": "02:30 pm",
                      "amount": "\$200",
                    },
                  ],
                ),
                buildDaySection(
                  "Sat, 18 Aug",
                  "\$0",
                  [],
                ),
                buildDaySection(
                  "Sun, 19 Aug",
                  "\$500",
                  [
                    {
                      "title": "Ride to Dubai Mall",
                      "time": "02:30 pm",
                      "amount": "\$200",
                    },
                    {
                      "title": "Ride to Tinkune",
                      "time": "02:30 pm",
                      "amount": "Rs. 200",
                    },
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
