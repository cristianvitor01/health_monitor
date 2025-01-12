import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../widgets/advertisement_card.dart';
import '../../widgets/news_card.dart';


class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
              const DashboardHeader(title: 'News',), // Cabeçalho no topo
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
              const AdvertisementCard(),
              const SizedBox(height: 16.0),
              const NewsCard(),
              const SizedBox(height: 16.0),
              const AdvertisementCard(),
              const SizedBox(height: 16.0),
              const NewsCard(),
              
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