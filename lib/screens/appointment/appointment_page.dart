import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../widgets/popup_menu_buttom.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/appointment_card.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              // Para permitir rolagem
              padding: const EdgeInsets.all(16.0),
              children: const [
                SizedBox(height: 16.0), // Espaço entre widgets
                // Alterar para o card de Sintomas
                AppointmentCard(
                    doctorName: 'Dr. Schmitz',
                    doctorSpecialty: 'Neurologist',
                    email: 'poppenschmitz@aol.de ',
                    phone: '+49 989 232',
                    date: '20.04.2023',
                    time: '16:30',
                    address: 'Winklergasse 45, 10117 Berlin')
              ],
            ),
            const Positioned(
              bottom: 20.0,
              right: 22.0,
              child:
                  PopupMenuButtonWidget(), // Adicionando o PopupMenuButtonWidget
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
    );
  }
}
