import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/medical_info_card.dart';
import '../../models/medical_info.dart';
import '../../services/data_service.dart';

class MedicalInfoPage extends StatelessWidget {
  const MedicalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: FutureBuilder<List<MedicalInfo>>(
          future: DataService().fetchMedicalInfo(),
          builder: (context, snapshot) {
            // Verifica se há dados
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(
                  child: Text('No medical information available.'));
            } else {
              final medicalInfo = snapshot.data!;
              return Stack(
                children: [
                  ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      const DashboardHeader(
                        title: 'Medical Info',
                      ),
                      const SizedBox(height: 16.0),
                      ...medicalInfo.map((info) => MedicalInfoCard(
                            userName: info.userName,
                            gender: info.gender,
                            bday: info.bday,
                            height: info.height,
                            weight: info.weight,
                            bloodGroup: info.bloodGroup,
                            covidVaccine: info.covidVaccine,
                            tetanusVaccine: info.tetanusVaccine,
                            typhusVaccine: info.typhusVaccine,
                            hepatitisVaccine: info.hepatitisVaccine,
                            surgery: info.surgery,
                            allergies: info.allergies,
                            emergencyContacName: info.emergencyContacName,
                            emergencyContacNumber: info.emergencyContacNumber,
                            emergencyContacAddress: info.emergencyContacAddress,
                            emergencyContacEmail: info.emergencyContacEmail,
                          )),
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
                                icon: const Icon(Icons.mode_edit_outlined,
                                    color: UIColor.iconsColor),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/medical_info_edit');
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              );
            }
          },
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
      //bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
    );
  }
}
