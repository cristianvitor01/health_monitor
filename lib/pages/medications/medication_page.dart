import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/medication_card.dart';
import '../../models/medication.dart';
import '../../services/medication_data_service.dart';

class MedicationPage extends StatelessWidget {
  const MedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: FutureBuilder<List<Medication>>(
          future: MedicationDataService().fetchMedication(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator(),);
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No medication available.'));
            } else {
              final medication = snapshot.data!;
              return Stack(
                children: [
                  ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      const SizedBox(height: 16.0),
                      ...medication.map((info) => MedicationCard(
                            medicationImage: info.medicationImage,
                            medicationName: info.medicationName,
                            medicationDescription: info.medicationDescription,
                            daily: info.daily,
                            time1: info.time1,
                            time2: info.time2,
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
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
