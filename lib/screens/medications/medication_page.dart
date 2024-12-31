import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../widgets/popup_menu_buttom.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/medication_card.dart';

class MedicationPage extends StatelessWidget {
  const MedicationPage({super.key});

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
                MedicationCard(
                  // medication_card
                  medicationName: 'Aspirin',
                  medicationDescription: 'ASS, 500mg BAYER, coated pills',
                  daily: '2x Daily',
                  time1: '06:00',
                  time2: '22:00',
                ),
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
