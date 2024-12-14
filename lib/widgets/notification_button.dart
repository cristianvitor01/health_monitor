import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.notifications, color: Colors.blue),
      onPressed: () {
        // Ação ao clicar no ícone de notificação
      },
    );
  }
}
