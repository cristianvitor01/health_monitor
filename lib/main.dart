import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'utils/app_colors.dart';
import './widgets/dashboard_head.dart';
import './widgets/navigation_buttons.dart';
import './widgets/appointment_card.dart';
// import './widgets/search_with_notifications_button.dart';  // Importando o widget de busca com notificações


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage(), // Chamando o widget 
    );
  }
}


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView( // ListView usado para conseguirmos rolar o conteudo
        children: const [
          DashboardHeader(),
          SearchWithNotifications(),  // Barra de busca com notificações
          UpcomingAppointmentCard(),
          // NavigationButtons(),
        ],
      ),
    );
  }
}
