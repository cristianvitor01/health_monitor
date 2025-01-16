import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/medical_info_card.dart';

class MedicalInfoPage extends StatelessWidget {
  const MedicalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: Stack(
          children: [
            ListView(
              // Para permitir rolagem
              padding: const EdgeInsets.all(16.0),
              children: [
                const DashboardHeader(title: 'Medical Info',), // Cabeçalho no topo
                const SizedBox(height: 16.0), // Espaço entre widgets
                MedicalInfoCard(
                  userName: 'John Smith',
                  gender: 'Male',
                  bday: '01/01/1990',
                  height: '1.80m',
                  weight: '80kg',
                  bloodGroup: 'A+',
                  covidVaccine: DateTime.parse('2021-01-01'),
                  tetanusVaccine: DateTime.parse('2021-01-01'),
                  typhusVaccine: DateTime.parse('2021-01-01'),
                  hepatitisVaccine: DateTime.parse('2021-01-01'),
                  surgery: DateTime.parse('2012-09-21'),
                  allergies: 'Peanuts',
                  emergencyContacName: 'Pamela Smith',
                  emergencyContacNumber: '+49 600 500',
                  emergencyContacAddress: 'Sunset Boulevard Berlin',
                  emergencyContacEmail: 'Pamela@smith.com',
                ),
              ],
            ),
            const Positioned(
              bottom: 20.0, 
              right: 22.0,
              child: PopupMenuButtonWidget(), // Adicionando o PopupMenuButtonWidget
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
      ),
    );
  }
}