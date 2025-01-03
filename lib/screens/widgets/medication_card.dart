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
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.33,
                            letterSpacing: 0.50,
                            color: UIColor.textMain,
                          )),
                      const SizedBox(height: 4.0),
                      // Descrição do medicamento
                      Text(medicationDescription,
                          style: const TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                            letterSpacing: 0.50,
                            color: UIColor.textMain,
                          )),
                      const SizedBox(height: 12.0),
                      // Informação sobre a dosagem diária
                      Text(
                        daily,
                        style: const TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 1.60,
                          letterSpacing: 0.50,
                          color: UIColor.textMain,
                        ),
                      ),
                    ],
                  ),
                ),
                // Imagem do medicamento
                const SizedBox(width: 12.0),
                Image.asset(
                  'assets/images/aspirin.png',
                  width: 114,
                  height: 119,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            const SizedBox(height: 32.0),

            // Linha inferior com ícone, texto 'Reminders' e botão de editar
            Row(
              children: [
                const Icon(
                  Icons.notifications,
                  color: UIColor.textMain,
                  size: 20.0,
                ),
                const Text(
                  '  Reminders',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 2.40,
                    letterSpacing: 0.50,
                    color: UIColor.textMain,
                  ),
                ),
                // Spacer para colocar o icone editar na extrema direita
                const Spacer(),
                Material(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.mode_edit_outlined,
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
            const SizedBox(height: 8.0),

            // Horários
            Row(
              children: [
                Text(
                  time1,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                    letterSpacing: 0.50,
                    color: UIColor.textMain,
                  ),
                ),
                const SizedBox(width: 16.0),
                Text(
                  time2,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.33,
                    letterSpacing: 0.50,
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
