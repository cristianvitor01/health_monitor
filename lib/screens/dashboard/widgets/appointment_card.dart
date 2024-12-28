import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

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
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nome e Área de Atuação
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctorName,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold, color: UIColor.textMain)),
                Text(doctorSpecialty,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),

            // Ícones de Contato
            Row(
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: UIColor.textMain,
                ),
                const SizedBox(width: 4.0),
                Text(email,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: UIColor.textMain)),
                const Spacer(),
                const Icon(Icons.phone, color: UIColor.textMain),
                const SizedBox(width: 4.0),
                Text(phone,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: UIColor.textMain)),
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
                    const Text('Date',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: UIColor.textMain,
                        )),
                    Text(date,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          color: UIColor.textMain,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Time',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: UIColor.textMain,
                      ),
                    ),
                    Text(
                      time,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: UIColor.textMain,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12.0),

            // Endereço
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Address',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: UIColor.textMain,
                  ),
                ),
                Text(
                  address,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    color: UIColor.textMain,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),

            // Botões de Ação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.email, color: UIColor.iconsColor),
                    onPressed: () {
                      debugPrint('Email button pressed');
                    },
                  ),
                ),
                Material(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.phone, color: UIColor.iconsColor),
                    onPressed: () {
                      debugPrint('Phone button pressed');
                    },
                  ),
                ),
                Material(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.edit, color: UIColor.iconsColor),
                    onPressed: () {
                      debugPrint('Edit button pressed');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
