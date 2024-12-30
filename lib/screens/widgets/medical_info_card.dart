import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';

class MedicalInfoCard extends StatelessWidget {
  final String userName;
  final String gender;
  final String bday;
  final String height;
  final String weight;
  final String bloodGroup;
  // Dados de vacinação
  final String covidVaccine;
  final String tetanusVaccine;
  final String typhusVaccine;
  final String hepatitisVaccine;
  // Surgery
  final String surgery;
  // Allergies
  final String allergies;
  // Emergency Contacts
  final String emergencyContacName;
  final String emergencyContacNumber;
  final String emergencyContacAddress;
  final String emergencyContacEmail;

  const MedicalInfoCard({
    super.key,
    required this.userName,
    required this.gender,
    required this.bday,
    required this.height,
    required this.weight,
    required this.bloodGroup,
    // Dados de vacinação
    required this.covidVaccine,
    required this.tetanusVaccine,
    required this.typhusVaccine,
    required this.hepatitisVaccine,
    // Surgery
    required this.surgery,
    // Allergies
    required this.allergies,
    // Emergency Contacts
    required this.emergencyContacName,
    required this.emergencyContacNumber,
    required this.emergencyContacAddress,
    required this.emergencyContacEmail,
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
            // Nome 
            Text(userName,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold, color: UIColor.textMain)),
            const SizedBox(height: 16.0),

            // Genero
            Row(
              children: [
                Text('Gender: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(gender,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Birthday: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(bday,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Height: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(height,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Weight: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(weight,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Blood Group: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(bloodGroup,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Vaccination: ',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: UIColor.textMain)),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Text('Covid-19: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(covidVaccine,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Tetanus: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(tetanusVaccine,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Typhus: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(typhusVaccine,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Text('Hepatitis: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(hepatitisVaccine,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Prior Surgeries',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: UIColor.textMain)),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Text('Appendix',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
                Text(surgery,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Allergies',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: UIColor.textMain)),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Text(allergies,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 30.0),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Emergency Contacts',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: UIColor.textMain)),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Text(emergencyContacName,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: UIColor.textMain)),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(emergencyContacNumber,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: UIColor.textMain)),
                    const SizedBox(width: 20.0),
                    Text(emergencyContacAddress,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: UIColor.textMain)),
                    const SizedBox(width: 20.0),
                    Text(emergencyContacEmail,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: UIColor.textMain)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Ajustar o padding do texto das informações.