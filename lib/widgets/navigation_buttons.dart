import 'package:flutter/material.dart';
import '../utils/app_colors.dart'; // Importa as cores

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              // Lógica para a Navegação para a página de Dashboard
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.backgroundColor,
              foregroundColor: Colors.white,
            ),
            child: const Text('Dashboard'),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica para a Navegação para outras páginas
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.backgroundColor,
              foregroundColor: Colors.white,
            ),
            child: const Text('Outros'),
          ),
        ],
      ),
    );
  }
}
