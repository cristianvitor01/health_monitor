import 'package:flutter/material.dart';
// import '../utils/app_colors.dart';  // Para usar as cores

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),  // Margem ao redor do Card
      elevation: 4,  // Sombras para dar efeito de elevação
      shape: RoundedRectangleBorder(  // Borda arredondada
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),  // Padding interno do Card
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título - Nome do médico
            Text(
              'Dr. Louis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),  // Espaçamento entre os textos
            Text(
              'Neurologista',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            // E-mail e telefone
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  'louis@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 16),
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  '+55 5555 5555',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Data e hora
            Text(
              '20.12.2024  16:30',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Local, 45, Brazil',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            // Ícones de ação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.location_on, color: Colors.green),  // Mapa
                Icon(Icons.email, color: Colors.blue),  // E-mail
                Icon(Icons.phone, color: Colors.green),  // Telefone
                Icon(Icons.edit, color: Colors.orange),  // Editar
              ],
            ),
          ],
        ),
      ),
    );
  }
}
