import 'package:flutter/material.dart';

class PrivacyPolicyPage
    extends
        StatefulWidget {
  const PrivacyPolicyPage({
    super.key,
  });

  @override
  State<
    PrivacyPolicyPage
  >
  createState() =>
      _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState
    extends
        State<
          PrivacyPolicyPage
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
          "Privacy Policy",
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "We collect your basic details, license, trip records, and payment info to verify your identity, process earnings, and ensure safety.\n Your data is secure, never sold, and only shared with insurance, payment, or legal authorities if required. \n \n You can access, update, or request deletion of your data anytime.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Contact Us:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        const Text(
                          "support@luxuryrides.com",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        const Text(
                          "+971 123 456",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.green,
                        value: true,
                        onChanged:
                            (
                              bool? value,
                            ) {},
                      ),
                      const Text(
                        "I agree to the Privacy Policy",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
