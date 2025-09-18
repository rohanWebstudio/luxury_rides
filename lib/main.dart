import 'package:flutter/material.dart';
import 'package:ride/documents.dart';
import 'package:ride/edit_notification.dart';
import 'package:ride/edit_profile.dart';
import 'package:ride/end.dart';
import 'package:ride/fare.dart';
import 'package:ride/help.dart';
import 'package:ride/home.dart';
import 'package:ride/login.dart';
import 'package:ride/manual.dart';
import 'package:ride/my_booking.dart';
import 'package:ride/notifications.dart';
import 'package:ride/onboarding.dart';
import 'package:ride/payments.dart';
import 'package:ride/performance.dart';
import 'package:ride/privacy_policy.dart';
import 'package:ride/profile.dart';
import 'package:ride/review.dart';
import 'package:ride/ride_history.dart';
import 'package:ride/settings.dart';

void
main() {
  runApp(
    const MainApp(),
  );
}

class MainApp
    extends
        StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return MaterialApp(
      home: const OnboardingPage(),
      routes: {
        '/signin':
            (
              context,
            ) => const LoginPage(),
        '/home':
            (
              context,
            ) => const HomePage(),
        '/mybooking':
            (
              context,
            ) => const BookingPage(),
        '/fare':
            (
              context,
            ) => const FarePage(),
        '/end':
            (
              context,
            ) => const EndRidePage(),
        '/performance':
            (
              context,
            ) => const PerformancePage(),
        '/profile':
            (
              context,
            ) => const ProfilePage(),
        '/edit_profile':
            (
              context,
            ) => const EditProfilePage(),
        '/settings':
            (
              context,
            ) => const SettingsPage(),
        '/edit_notification':
            (
              context,
            ) => const EditNotification(),
        '/notifications':
            (
              context,
            ) => const NotificationsPage(),
        '/review':
            (
              context,
            ) => const ReviewPage(),
        '/documents':
            (
              context,
            ) => const DocumentsPage(),
        '/paymentstatements':
            (
              context,
            ) => const PaymentStatementsPage(),
        '/privacy_policy':
            (
              context,
            ) => const PrivacyPolicyPage(),
        '/help':
            (
              context,
            ) => const HelpPage(),
        '/ride_history':
            (
              context,
            ) => const RideHistoryPage(),
        '/manual':
            (
              context,
            ) => const ManualPage(),
      },
    );
  }
}
