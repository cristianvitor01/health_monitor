import 'package:flutter/material.dart';
// import 'screens/dashboard/dashboard_page.dart';
// import 'screens/medical_info/medical_info_page.dart';
// import 'screens/search/search_page.dart';
// import 'screens/symptoms/symptoms_page.dart';
// import 'screens/medications/medication_page.dart';
import 'screens/appointment/appointment_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Health Monitor',
      home: AppointmentPage(), 
    );
  }
}