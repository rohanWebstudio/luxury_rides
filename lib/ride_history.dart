import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RideHistoryPage
    extends
        StatelessWidget {
  const RideHistoryPage({
    super.key,
  });

  Widget
  buildRideItem({
    required String
    name,
    required String
    imageUrl,
    required String
    distance,
    required String
    fare,
    required String
    from,
    required String
    to,
    required String
    rating,
    required String
    time,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          imageUrl,
        ),
        radius: 24,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fare,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$from → $to",
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                distance,
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              ),
              Text(
                rating,
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                time,
                style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
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
          "Ride history",
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
          const Divider(
            color: Colors.grey,
          ),

          // Ride List
          Expanded(
            child: ListView(
              children: [
                buildRideItem(
                  name: "John Deo",
                  imageUrl: "https://i.pinimg.com/1200x/53/7d/c7/537dc7ab9fe3cf2b2497b002a959bcae.jpg",
                  distance: "0.4km",
                  fare: "\$50",
                  from: "Dubai Mall (Dubai)",
                  to: "Burj Khalifa (Dubai)",
                  rating: "4.8",
                  time: "1 min",
                ),
                buildRideItem(
                  name: "John Deo",
                  imageUrl: "https://i.pinimg.com/736x/dd/e7/a3/dde7a3235d2c4eabd41c66bd96ee8e08.jpg",
                  distance: "0.4km",
                  fare: "AED 50",
                  from: "Dubai Mall (Dubai)",
                  to: "Burj Khalifa (Dubai)",
                  rating: "4.8",
                  time: "1 min",
                ),
                buildRideItem(
                  name: "John Deo",
                  imageUrl: "https://i.pinimg.com/736x/dd/e7/a3/dde7a3235d2c4eabd41c66bd96ee8e08.jpg",
                  distance: "0.4km",
                  fare: "AED 50",
                  from: "Dubai Mall (Dubai)",
                  to: "Burj Khalifa (Dubai)",
                  rating: "4.8",
                  time: "1 min",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
