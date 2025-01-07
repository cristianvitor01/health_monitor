import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../widgets/dashboard_head.dart';
import '../widgets/popup_menu_buttom.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/medical_info_card.dart';

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
              children: const [
                DashboardHeader(title: 'Medical Info',), // Cabeçalho no topo
                SizedBox(height: 16.0), // Espaço entre widgets
                MedicalInfoCard(
                  userName: 'John Smith',
                  gender: 'Male',
                  bday: '01/01/1990',
                  height: '1.80m',
                  weight: '80kg',
                  bloodGroup: 'A+',
                  covidVaccine: '01/01/2021',
                  tetanusVaccine: '01/01/2021',
                  typhusVaccine: '01/01/2021',
                  hepatitisVaccine: '01/01/2021',
                  surgery: '21.09.2012  ',
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