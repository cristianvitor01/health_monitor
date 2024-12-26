import 'package:flutter/material.dart';
import '../utils/app_colors.dart'; 

class AppointmentCard extends StatelessWidget {
  final String doctorName;
  final String doctorSpecialty;
  final String email;
  final String phone;
  final String date;
  final String time;
  final String address;

  const AppointmentCard({
    super.key,
    required this.doctorName,
    required this.doctorSpecialty,
    required this.email,
    required this.phone,
    required this.date,
    required this.time,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nome e Área de Atuação
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctorName, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                Text(doctorSpecialty, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(height: 8.0),

            // Ícones de Contato
            Row(
              children: [
                Icon(Icons.email, color: UIColor.iconsColor),
                const SizedBox(width: 4.0),
                Text(email),
                const Spacer(),
                Icon(Icons.phone, color: UIColor.iconsColor),
                const SizedBox(width: 4.0),
                Text(phone),
              ],
            ),
            const SizedBox(height: 12.0),

            // Data e Horário
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Data:', style: Theme.of(context).textTheme.bodyLarge),
                    Text(date, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Horário:', style: Theme.of(context).textTheme.bodyLarge),
                    Text(time, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12.0),

            // Endereço
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Endereço:', style: Theme.of(context).textTheme.bodyLarge),
                Text(address, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 16.0),

            // Botões de Ação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.email, color: UIColor.iconsColor),
                  onPressed: () {
                    debugPrint('Email button pressed');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.phone, color: UIColor.iconsColor),
                  onPressed: () {
                    debugPrint('Phone button pressed');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: UIColor.iconsColor),
                  onPressed: () {
                    debugPrint('Edit button pressed');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

