import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'pages/dashboard/dashboard_page.dart';
import 'pages/medical_info/medical_info_page.dart';
import 'pages/search/search_page.dart';
import 'pages/symptoms/symptoms_page.dart';
import 'pages/medications/medication_page.dart';
import 'pages/appointment/appointment_page.dart';
import 'pages/news/news_page.dart';
import 'pages/rewards/rewards_page.dart';
import 'pages/calendar/calendar_page.dart';
import 'pages/upload/upload_page.dart';
import 'pages/symptoms/symptoms_edit_page.dart';
import 'pages/medications/medications_edit_page.dart';
import 'pages/week/you_week_page.dart';
import 'pages/timeline/timeline_screen.dart';
import 'pages/firestore_test/firestore_test_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp();
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Monitor',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const FirestoreTestPage(),
        '/medical_info': (context) => const MedicalInfoPage(),
        '/search': (context) => const SearchPage(),
        '/symptoms': (context) => const SymptomsPage(),
        '/medications': (context) => const MedicationPage(),
        '/appointment': (context) => const AppointmentPage(),
        '/news': (context) => const NewsPage(),
        '/rewards': (context) => const RewardsPage(),
        '/calendar': (context) => const CalendarPage(),
        '/upload': (context) => const UploadPage(),
        '/edit-symptoms': (context) => const SymptomsEditPage(),
        '/edit-medications': (context) => const MedicationsEditPage(),
        '/week': (context) => const YouWeekPage(),
        '/timeline': (context) => const TimelineScreen(),
      },
    );
  }
}