import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart'; 

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
            Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: UIColor.textMain, 
              ),
            ),
            // Avatar user
             CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage('assets/images/user_avatar.png'), 
            ),
          ],
        ),
      ),
    );
  }
}
