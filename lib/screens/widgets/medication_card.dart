import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class MedicationCard extends StatelessWidget {
  final String medicationName;
  final String medicationDescription;
  final String daily;
  final String time1;
  final String time2;

  const MedicationCard({
    super.key,
    required this.medicationName,
    required this.medicationDescription,
    required this.daily,
    required this.time1,
    required this.time2,
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
            // Nome e descrição do medicamento
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nome do medicamento em negrito e maior
                      Text(medicationName,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: UIColor.textMain)),
                      const SizedBox(height: 4.0),
                      // Descrição do medicamento
                      Text(medicationDescription,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: UIColor.textMain)),
                      const SizedBox(height: 12.0),
                      // Informação sobre a dosagem diária
                      Text(
                        daily,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: UIColor.textMain,
                        ),
                      ),
                    ],
                  ),
                ),
                // Imagem do medicamento
                const SizedBox(width: 16.0),
                Image.asset(
                  'assets/images/aspirin.png',
                  width: 114,
                  height: 119,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            const SizedBox(height: 16.0), // Espaço entre as seções

            // Linha inferior com ícone, texto 'Reminders' e botão de editar
            Row(
              children: [
                // Ícone do sino (notifications)
                const Icon(
                  Icons.notifications,
                  color: UIColor.textMain,
                  size: 24.0,
                ),
                // Texto 'Reminders' sem espaçamento entre ícone e texto
                const Text(
                  '  Reminders',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    //fontSize: 10.0,
                    // fontWeight: FontWeight.bold,
                    color: UIColor.textMain,
                  ),
                ),
                // Spacer empurrando o ícone de editar para a extrema direita
                const Spacer(),
                Material(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: UIColor.iconsColor,
                    ),
                    onPressed: () {
                      // Função de edição
                      debugPrint('Editar clicado');
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0), // Espaço entre Reminders e horários

            // Horários 
            Row(
              children: [
                Text(
                  time1,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: UIColor.textMain,
                  ),
                ),
                const SizedBox(width: 16.0), // Espaço entre time1 e time2
                Text(
                  time2,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: UIColor.textMain,
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
