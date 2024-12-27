import 'package:flutter/material.dart';
import 'utils/app_colors.dart';
import './widgets/dashboard_head.dart';
import './widgets/search_box.dart';
import './widgets/appointment_card.dart';
import './widgets/medication_card.dart';
import './widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: DashboardPage(), // Chamando o widget
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.backgroundColor,
      body: ListView(
        // Para permitir rolagem
        padding: const EdgeInsets.all(16.0),
        children: [
          const DashboardHeader(), // Cabeçalho no topo
          const SizedBox(height: 16.0), // Espaço entre widgets
          Row(
            children: [
              const Expanded(
                child: SearchBox(hintText: 'Search your records'), // search_box
              ),
              const SizedBox(width: 10.0),
              Stack(
                children: [
                  Container( // Botão de notificação
                    decoration: BoxDecoration(
                        color: UIColor.iconsColor,
                        borderRadius: BorderRadius.circular(14.0)),
                    child: IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.notifications, color: Colors.white),
                    ),
                  ),
                  Positioned( // Bolinha vermelha da notificação
                    right: 4,
                    top: 4,
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          const Text(
            '  Your next Appointment',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 24.0, color: UIColor.textMain),
          ),
          const SizedBox(height: 16.0),
          const AppointmentCard( // appointment_card
            doctorName: 'Dr. Schmitz',
            doctorSpecialty: 'Neurologist',
            email: 'schmitz@aol.de',
            phone: '+49 989 232',
            date: '25/12/2024',
            time: '16:30',
            address: 'Winklergasse 45, 10117 Berlin',
          ),
          const SizedBox(height: 24.0),
          const Text(
            '   Your Medications Today',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 24.0, color: UIColor.textMain),
          ),
          const SizedBox(height: 16.0),
          const MedicationCard( // medication_card
            medicationName: 'Aspirin',
            medicationDescription: 'ASS, 500mg BAYER, coated pills',
            daily: '2x Daily',
            time1: '06:00',
            time2: '22:00',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
    );
  }
}
