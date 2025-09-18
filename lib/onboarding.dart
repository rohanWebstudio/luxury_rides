import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage
    extends
        StatefulWidget {
  const OnboardingPage({
    super.key,
  });

  @override
  State<
    OnboardingPage
  >
  createState() =>
      _OnboardingPageState();
}

class _OnboardingPageState
    extends
        State<
          OnboardingPage
        >
    with
        TickerProviderStateMixin {
  double
  _opacity =
      0.0;

  @override
  void
  initState() {
    super.initState();

    Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
      () {
        setState(
          () {
            _opacity = 1.0;
          },
        );
      },
    );
  }

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(
            seconds: 4,
          ),
          child: Container(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),

                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Welcome to the world\nof',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Luxury',
                  style: GoogleFonts.inriaSerif(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Discover a world premium vehicle at your fingertips. Unleash the thrill of driving in style. Your journey begins here.',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 300,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
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
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/signin',
                        );
                      },
                      child: Text(
                        'Lets Go',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
