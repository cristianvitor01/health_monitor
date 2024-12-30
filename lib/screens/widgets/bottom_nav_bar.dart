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
        children: navIcons.map((icon) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                debugPrint('Ícone $icon pressionado');
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  icon,
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
