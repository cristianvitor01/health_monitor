import 'package:flutter/material.dart';
import 'utils/app_colors.dart';
import './widgets/dashboard_head.dart';
import './widgets/search_box.dart';
import './widgets/appointment_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
      home: DashboardPage(), // Chamando o widget 
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Padding global
        children: [
          const DashboardHeader(),
          const SizedBox(height: 16.0), // Espaço após o cabeçalho
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: SearchBox(
                  hintText: 'Busque seus registros',
                ),
              ),
              const SizedBox(width: 8.0),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: UIColor.iconsColor,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: IconButton(
                      onPressed: () {
                        debugPrint('Botão de notificações pressionado');
                      },
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Sua próxima consulta',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24.0,
              color: UIColor.textMain,
            ),
          ),
          const SizedBox(height: 8.0),
          const AppointmentCard(
            doctorName: 'Dr. Schmitz',
            doctorSpecialty: 'Neurologista',
            email: 'joao@exemplo.com',
            phone: '(99) 99999-9999',
            date: '25/12/2024',
            time: '14:00',
            address: 'Rua Exemplo, 123',
          ),
          const SizedBox(height: 16.0),
          // Adicione outros widgets, como lista de consultas futuras ou estatísticas
        ],
      ),
    );
  }
}

