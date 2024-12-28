import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../widgets/dashboard_head.dart';
import '../widgets/appointment_card.dart';
import '../widgets/popup_menu_buttom.dart';
import '../widgets/bottom_nav_bar.dart';

class MedicalInfoPage extends StatelessWidget {
  const MedicalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.backgroundColor,
      body: Stack(
        children: [
          ListView(
            // Para permitir rolagem
            padding: const EdgeInsets.all(16.0),
            children: const [
              DashboardHeader(title: 'Medical Info',), // Cabeçalho no topo
              SizedBox(height: 16.0), // Espaço entre widgets
              // const SizedBox(height: 24.0),
              // CRIAR NOVO WIDGET DE INFORMAÇÕES MEDICAS ...............................................
              AppointmentCard( // appointment_card
                doctorName: 'Dr. Schmitz',
                doctorSpecialty: 'Neurologist',
                email: 'schmitz@aol.de',
                phone: '+49 989 232',
                date: '25/12/2024',
                time: '16:30',
                address: 'Winklergasse 45, 10117 Berlin',
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
    );
  }
}