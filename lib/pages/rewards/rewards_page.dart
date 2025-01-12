import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/awards_groups.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.backgroundColor,
      body: Stack(
        children: [
          ListView(
            // Para permitir rolagem
            padding: const EdgeInsets.all(16.0),
            children: [
              const DashboardHeader(title: 'Your badges',), // Cabeçalho no topo
              const SizedBox(height: 16.0), // Espaço entre widgets
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(
                    color: UIColor.textMain,
                    onPressed: () {
                      debugPrint('Back button pressionado');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const AwardsGroups(),
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
