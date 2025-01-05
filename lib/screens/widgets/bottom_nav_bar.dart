import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
// import '../utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List<IconData> navIcons = [
    Icons.calendar_month,
    Icons.search,
    Icons.upload,
    Icons.person,
    Icons.home
  ];

  // Cada ícone tem uma rota associada
  final List<String> navRoutes = [
    '/calendar',
    '/search',
    '/', // Criar tela de Upload
    '/medical_info', 
    '/'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      margin: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(29),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribui os ícones igualmente
        children: List.generate(navIcons.length, (index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                // debugPrint('Ícone $icon pressionado');
                Navigator.pushNamed(context, navRoutes[index]);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  // icon,
                  navIcons[index],
                  size: 25,
                  color: UIColor.textMain, // Cor dos ícones
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
