import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/medical_info_card.dart';


// TODO: Implement MedicalInfoEdit with filders to edit the medical information

class MedicalInfoEdit extends StatelessWidget {
  const MedicalInfoEdit({super.key});

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
                const DashboardHeader(title: 'Medical Info Edit',), // Cabeçalho no topo
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
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.check,
                              color: UIColor.iconsColor),
                          onPressed: () {
                            // Confirmação das alterações 
                            Navigator.pushNamed(context, '/medical_info');
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
      ),
    );
  }
}