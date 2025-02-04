import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/appointment_card.dart';
import '../../models/appointment.dart';
import '../../services/appointment_data_services.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: FutureBuilder<List<Appointment>>(
          future: AppointmentDataServices().fetchAppointment(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator(),);
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No appointment available.'));
            } else {
              final appointment = snapshot.data!;
              return Stack(
                children: [
                  ListView(
                    // Para permitir rolagem
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      const SizedBox(height: 16.0), // Espaço entre widgets
                      ...appointment.map((appointment) => AppointmentCard(
                        doctorName: appointment.doctorName,
                        doctorSpecialty: appointment.doctorSpecialty,
                        email: appointment.email,
                        phone: appointment.phone,
                        date: appointment.date,
                        time: appointment.time,
                        address: appointment.address,
                      )),
                    ],
                  ),
                  const Positioned(
                    bottom: 20.0,
                    right: 22.0,
                    child: PopupMenuButtonWidget(), // Adicionando o PopupMenuButtonWidget
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
