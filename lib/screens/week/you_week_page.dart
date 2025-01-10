import 'package:flutter/material.dart';
import 'package:health_monitor/screens/widgets/symptoms_card.dart';
import '../../utils/app_colors.dart';
import '../widgets/dashboard_head.dart';
// import '../widgets/medication_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/popup_menu_buttom.dart';
import '../widgets/medication_card_reduced.dart';
import '../widgets/symptoms_card_reduced.dart';

class YouWeekPage extends StatelessWidget {
  const YouWeekPage({super.key});

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
                const DashboardHeader(
                  title: 'You Week',
                ), // Cabeçalho no topo
                const SizedBox(height: 40.0), // Espaço entre widgets
                // Progress Wheel
                Center(
                  child: SizedBox(
                    width: 270,
                    height: 270,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 267.99,
                          top: 269.25,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-3.14),
                            child: Container(
                              width: 267.48,
                              height: 267.48,
                              decoration: const ShapeDecoration(
                                color: UIColor.progressWhel,
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 52,
                          top: 208,
                          child: Container(
                            width: 45.35,
                            height: 43.79,
                            decoration: const ShapeDecoration(
                              color: UIColor.progressWheltopo,
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 225.10,
                          top: 226.37,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(-3.14),
                            child: Container(
                              width: 181.70,
                              height: 181.70,
                              decoration: const ShapeDecoration(
                                color: UIColor.progressWhel2,
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 53.17,
                          top: 78.20,
                          child: Container(
                            width: 45.35,
                            height: 43.79,
                            decoration: const ShapeDecoration(
                              color: UIColor.progressWhel2topo,
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  '  Your Medications',
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
                const MedicationCardReduced(medicationName: 'Aspirin', medicationDescription: 'ASS, 500mg BAYER, überzogene Tabletten', daily: '-', time1: '6:00', time2: '22:00'),
                const SizedBox(height: 20.0),
                const MedicationCardReduced(medicationName: 'Vitamins', medicationDescription: 'Mulitvitamin from Xworks, Capsule', daily: '-', time1: '8:00', time2: '12:00'),
                const SizedBox(height: 40.0),
                const Text(
                  '   Your Symptoms',
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
                const SymptomsCardReduced(symptomName: 'Headache', symptomDescription: 'aaaaaa', symptomDate: '20.04.2023', symptomTime: '16:30 - 18:30'),
                const SizedBox(height: 20.0),
                const SymptomsCardReduced(symptomName: 'Nausea', symptomDescription: 'aaaaaaa', symptomDate: '22.04.2023', symptomTime: '11:00-16:00'),
                const SizedBox(height: 20.0),
                const SymptomsCardReduced(symptomName: 'Anxiety', symptomDescription: 'aaaaaaa', symptomDate: '22.04.2023', symptomTime: '06:00-12:00'),
                const SizedBox(height: 20.0),
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
