import 'package:flutter/material.dart';
import 'package:health_monitor/screens/widgets/advertisement_card.dart';
import 'package:health_monitor/screens/widgets/appointment_card.dart';
import 'package:health_monitor/screens/widgets/symptoms_card.dart';
import '../../utils/app_colors.dart';
import '../widgets/dashboard_head.dart';
// import '../widgets/appointment_card.dart';
import '../widgets/medication_card.dart';
import '../widgets/bottom_nav_bar.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: Stack(
          children: [
            ListView(
              // Para permitir rolagem
              padding: const EdgeInsets.all(26.0),
              children: const [
                DashboardHeader(
                  title: 'Your Timeline',
                ), // Cabeçalho no topo
                SizedBox(height: 30.0), // Espaço entre widgets
                AppointmentCard(
                    doctorName: 'Dr. Schmitz',
                    doctorSpecialty: '-',
                    email: '-',
                    phone: '-',
                    date: '20.04.2023',
                    time: '16:30',
                    address: '-'),
                SizedBox(height: 30.0),
                AdvertisementCard(),
                SymptomsCard(
                    symptomName: 'Track your Symptoms',
                    symptomDescription: '-',
                    symptomDate: '-',
                    symptomTime: '-'),
                SizedBox(height: 20.0),
                MedicationCard(
                    medicationName: 'Take your Medication',
                    medicationDescription: '-',
                    daily: '-',
                    time1: '-',
                    time2: '-'),
                SizedBox(height: 40.0),
                AdvertisementCard(),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
      ),
    );
  }
}
