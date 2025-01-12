import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/symptoms_card.dart';

class SymptomsEditPage extends StatelessWidget {
  const SymptomsEditPage({super.key});

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
                SymptomsCard(symptomName: 'Sintomas edit page', symptomDescription: 'Temples Throbbing, couldnt work ', symptomDate: '20.04.2023', symptomTime: '16:30 - 18:30')
              ],
            ),
            const Positioned(
              bottom: 20.0, 
              right: 22.0,
              child: PopupMenuButtonWidget(), // Adicionando o PopupMenuButtonWidget
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
    );
  }
}
