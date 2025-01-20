import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/symptoms_card.dart';
import 'package:health_monitor/models/symptoms.dart';
import 'package:health_monitor/services/symptoms_data_services.dart';

class SymptomsPage extends StatelessWidget {
  const SymptomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: FutureBuilder<List<Symptoms>>(
          future: SymptomsDataService().fetchSymptoms(),
          builder: (context, snapshot) {
            // Verifica se há dados
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                  child: Text('No symptoms information available.'));
            } else {
              final symptoms = snapshot.data!;
              return Stack(
                children: [
                  ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      const SizedBox(height: 16.0),
                      ...symptoms.map((symptom) => SymptomsCard(
                            symptomName: symptom.symptomName,
                            symptomDescription: symptom.symptomDescription,
                            symptomDate: symptom.symptomDate,
                            symptomTime: symptom.symptomTime,
                          )),
                    ],
                  ),
                  const Positioned(
                    bottom: 20.0,
                    right: 22.0,
                    child: PopupMenuButtonWidget(),
                  ),
                ],
              );
            }
          },
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
      ),
    );
  }
}
