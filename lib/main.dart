import 'package:flutter/material.dart';
import 'screens/dashboard/dashboard_page.dart';
import 'screens/medical_info/medical_info_page.dart';
import 'screens/search/search_page.dart';
import 'screens/symptoms/symptoms_page.dart';
import 'screens/medications/medication_page.dart';
import 'screens/appointment/appointment_page.dart';
import 'screens/news/news_page.dart';
import 'screens/rewards/rewards_page.dart';
import 'screens/calendar/calendar_page.dart';
import 'screens/upload/upload_page.dart';
import 'screens/symptoms/symptoms_edit_page.dart';
import 'screens/medications/medications_edit_page.dart';
import 'screens/week/you_week_page.dart';


void main() {
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
        '/': (context) => const DashboardPage(),
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
      },
    );
  }
}