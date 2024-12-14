import 'package:flutter/material.dart';
import '../utils/app_colors.dart'; // Importa as cores

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea( // Garante que o conteúdo não fique sobre a barra de status
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Título
            Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: AppColors.textMain, // Azul escuro
              ),
            ),
            // Avatar do usuário
             CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage('assets/user_avatar.png'), // Substitua com sua imagem
            ),
          ],
        ),
      ),
    );
  }
}
