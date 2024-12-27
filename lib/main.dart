import 'package:flutter/material.dart';
import 'utils/app_colors.dart';
import './widgets/dashboard_head.dart';
import './widgets/search_box.dart';
import './widgets/appointment_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
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
  body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinha elementos horizontalmente
      children: [
        const DashboardHeader(), // Cabeçalho no topo
        const SizedBox(height: 16.0), // Espaço entre widgets
        Row(
          children: [
            const Expanded(
              child: SearchBox(hintText: 'Search your records'),
            ),
            const SizedBox(width: 8.0),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: UIColor.iconsColor,
                    borderRadius: BorderRadius.circular(14.0)
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications, color: Colors.white),
                  ),
                ),
                Positioned(
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
          style: TextStyle(fontFamily: 'Poppins', fontSize: 24.0, color: UIColor.textMain),
        ),
        const SizedBox(height: 16.0),
        const AppointmentCard(
          doctorName: 'Dr. Schmitz',
          doctorSpecialty: 'Neurologist',
          email: 'schmitz@aol.de',
          phone: '+49 989 232',
          date: '25/12/2024',
          time: '16:30',
          address: 'Winklergasse 45, 10117 Berlin',
        ),
      ],
    ),
  ),
);

  }
}

