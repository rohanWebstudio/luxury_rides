import 'package:flutter/material.dart';

class PerformancePage
    extends
        StatefulWidget {
  const PerformancePage({
    super.key,
  });

  @override
  State<
    PerformancePage
  >
  createState() =>
      _PerformancePageState();
}

class _PerformancePageState
    extends
        State<
          PerformancePage
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                  ),
                  child: Row(
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
                        children: const [
                          Text(
                            "Basic",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Your tier this week",
                            style: TextStyle(
                              color: Colors.grey,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "45 rides to Platinum",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                LinearProgressIndicator(
                  value: 0.55,
                  backgroundColor: Colors.grey.shade800,
                  color: Colors.amber,
                  minHeight: 8,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Keep 4.65+ rating",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
<<<<<<< HEAD
                Center(
                  child: const Text(
                    "Trip completed",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: const Text(
                    "50 trips over a week",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                    ),
=======
                const Text(
                  "Trip completed\n50 trips over a week",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16,
>>>>>>> d1b7173ec0c2a62628973bd7c2db725f38d2496c
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _infoBox(
                      "Completed rate",
                      "80%",
                    ),
                    _infoBox(
                      "Cancellation rate",
                      "20%",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
<<<<<<< HEAD
                Row(
                  children: [
                    const Text(
                      "Today's income",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                      size: 16,
                    ),
                  ],
=======
                const Text(
                  "Today's income",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
>>>>>>> d1b7173ec0c2a62628973bd7c2db725f38d2496c
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "AED 500",
                  style: TextStyle(
<<<<<<< HEAD
                    color: Colors.amber,
                    fontSize: 18,
=======
                    color: Colors.white,
                    fontSize: 26,
>>>>>>> d1b7173ec0c2a62628973bd7c2db725f38d2496c
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.amber,
                        Colors.orange,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.amber,
                          Colors.brown,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "+ Add daily goal",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.card_giftcard,
<<<<<<< HEAD
                      color: Colors.white,
=======
                      color: Colors.amber,
>>>>>>> d1b7173ec0c2a62628973bd7c2db725f38d2496c
                    ),
                    SizedBox(
                      width: 8,
                    ),
<<<<<<< HEAD
                    Column(
                      children: [
                        Text(
                          "\$0",
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                        Text(
                          "Bonus",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                      size: 16,
=======
                    Text(
                      "\$0 Bonus",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
>>>>>>> d1b7173ec0c2a62628973bd7c2db725f38d2496c
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget
  _infoBox(
    String
    title,
    String
    value,
  ) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        border: Border.all(
          color: Colors.amber,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
