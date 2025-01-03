import 'package:flutter/material.dart';
import '../../utils/app_colors.dart'; 

class DashboardHeader extends StatelessWidget {
  final String title;

  const DashboardHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea( // Garante que o conteúdo não fique sobre a barra de status
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.w700,
                height: 0.78,
                color: UIColor.textMain, 
              ),
            ),
            // Avatar user
             const CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage('assets/images/user_avatar.png'), 
            ),
          ],
        ),
      ),
    );
  }
}
