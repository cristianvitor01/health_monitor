import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class AppointmentCardReduced extends StatelessWidget {
  final String doctorName;
  final String doctorSpecialty;
  final String email;
  final String phone;
  final String date;
  final String time;
  final String address;

  const AppointmentCardReduced({
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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Nome
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctorName,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      color: UIColor.textMain,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      height: 1.33,
                      letterSpacing: 0.50,
                    )),
                // Area de atuação não mostrada
                Visibility(
                  visible: false,
                  child: Row(
                    children: [
                      Text(doctorSpecialty,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            color: UIColor.textMain,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                            letterSpacing: 0.50,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            // Ícones de Contato não mostrados
            Visibility(
              visible: false,
              child: Row(
                children: [
                  const Icon(
                    Icons.email_outlined,
                    color: UIColor.textMain,
                    size: 20,
                  ),
                  const SizedBox(width: 8.0),
                  Text(email,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                        height: 1.60,
                        letterSpacing: 0.50,
                        color: UIColor.textMain,
                      )),
                  const SizedBox(width: 8.0),
                  const Icon(
                    Icons.phone,
                    color: UIColor.textMain,
                    size: 20,
                  ),
                  const SizedBox(width: 8.0),
                  Text(phone,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0,
                        height: 1.60,
                        letterSpacing: 0.50,
                        color: UIColor.textMain,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            // Data e Horário e icones em ROw
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Date',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.60,
                          letterSpacing: 0.50,
                          color: UIColor.textMain,
                        )),
                    const SizedBox(height: 8.0),
                    Text(date,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 1.71,
                          letterSpacing: 0.50,
                          color: UIColor.textMain,
                        )),
                  ],
                ),
                const SizedBox(width: 24.0),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Time',
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                            letterSpacing: 0.50,
                            color: UIColor.textMain,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          time,
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.71,
                            letterSpacing: 0.50,
                            color: UIColor.textMain,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Material(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.mode_edit_outlined,
                                color: UIColor.iconsColor),
                            onPressed: () {
                              debugPrint('Phone button pressed');
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Material(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.check,
                                color: UIColor.iconsColor),
                            onPressed: () {
                              debugPrint('Edit button pressed');
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // Endereço
            Visibility(
              visible: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.60,
                      letterSpacing: 0.50,
                      color: UIColor.textMain,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    address,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.71,
                      letterSpacing: 0.50,
                      color: UIColor.textMain,
                    ),
                  ),
                ],
              ),
            ),
            // Botões de Ação
          ],
        ),
      ),
    );
  }
}
