import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'utils/app_colors.dart';
import './widgets/dashboard_head.dart';
import 'widgets/search_box.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      body: ListView( // Para garantir a rolagem 
        children: [
          const DashboardHeader(),
          Padding(
            padding: const EdgeInsets.all(16.0), // Margens ao redor do layout
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                const Expanded(
                  child: SearchBox(
                    hintText: 'Busque seus registros',
                  ),
                ),
                const SizedBox(width: 8.0), // Espaço entre os widgets
                // Botão de notificações envolvido por um Container para estilizar
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: UIColor.iconsColor, // Fundo azul do botão
                        borderRadius: BorderRadius.circular(14.0) 
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
                          color: Colors.red, // Bolinha de notificação
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),  
        ],
      ),
    );
  }
}