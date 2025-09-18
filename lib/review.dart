import 'package:flutter/material.dart';

class ReviewPage
    extends
        StatelessWidget {
  const ReviewPage({
    super.key,
  });

  final List<
    Map<
      String,
      dynamic
    >
  >
  reviews = const [
    {
      "rating": 2,
      "title": "Good",
      "description": "",
      "name": "John Deo",
      "avatar": "https://i.pravatar.cc/150?img=1",
    },
    {
      "rating": 3,
      "title": "Great",
      "description": "I experienced great this time.",
      "name": "John Deo",
      "avatar": "https://i.pravatar.cc/150?img=1",
    },
    {
      "rating": 4,
      "title": "Great",
      "description": "Very professional and followed the route perfectly. Highly satisfied with the experience.",
      "name": "John Deo",
      "avatar": "https://i.pravatar.cc/150?img=1",
    },
    {
      "rating": 2,
      "title": "Great",
      "description": "I experienced great this time, Appreciate the safe driving and punctuality. Would definitely ride again.",
      "name": "John Deo",
      "avatar": "https://i.pravatar.cc/150?img=1",
    },
  ];

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
          "Review & Rating",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(
                  16,
                ),
                itemCount: reviews.length,
                itemBuilder:
                    (
                      context,
                      index,
                    ) {
                      final review = reviews[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 16,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      _buildStars(
                                        review["rating"],
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        review["title"],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        review["name"],
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          review["avatar"],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  if ((review["description"]
                                          as String)
                                      .isNotEmpty)
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                      ),
                                      child: Text(
                                        review["description"],
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all Review",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.amber,
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
  _buildStars(
    int
    rating,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (
          index,
        ) {
          if (index <
              rating) {
            return const Icon(
              Icons.star,
              color: Colors.amber,
              size: 16,
            );
          } else {
            return const Icon(
              Icons.star_border,
              color: Colors.amber,
              size: 16,
            );
          }
        },
      ),
    );
  }
}
