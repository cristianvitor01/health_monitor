import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/search_box.dart';
import '../../widgets/appointment_card.dart';
import '../../widgets/medication_card.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/popup_menu_buttom.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

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
              children: [
                const DashboardHeader(title: 'Dashboard',), // Cabeçalho no topo
                const SizedBox(height: 30.0), // Espaço entre widgets
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/timeline');
                            },
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
                const SizedBox(height: 30.0),
                const Text(
                  '  Your next Appointment',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                      letterSpacing: -1.20,
                      color: UIColor.textMain,
                  ),
                ),
                const SizedBox(height: 20.0),
                const AppointmentCard( // appointment_card
                  doctorName: 'Dr. Schmitz',
                  doctorSpecialty: 'Neurologist',
                  email: 'schmitz@aol.de',
                  phone: '+49 989 232',
                  date: '25/12/2024',
                  time: '16:30',
                  address: 'Winklergasse 45, 10117 Berlin',
                ),
                const SizedBox(height: 30.0),
                const Text(
                  '   Your Medications Today',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                      letterSpacing: -1.20,
                      color: UIColor.textMain,
                  ),
                ),
                const SizedBox(height: 20.0),
                const MedicationCard( // medication_card
                  medicationImage: 'assets/images/aspirin.png',
                  medicationName: 'Aspirin',
                  medicationDescription: 'ASS, 500mg BAYER, coated pills',
                  daily: '2x Daily',
                  time1: '06:00',
                  time2: '22:00',
                ),
                const SizedBox(height: 24.0),
              ],
            ),
            const Positioned(
              bottom: 20.0, 
              right: 22.0,
              child: PopupMenuButtonWidget(), 
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
      ),
    );
  }
}
