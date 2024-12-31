import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';

class SymptomsCard extends StatefulWidget {
  final String symptomName;
  final String symptomDescription;
  final String symptomDate;
  final String symptomTime;

  const SymptomsCard({
    super.key,
    required this.symptomName,
    required this.symptomDescription,
    required this.symptomDate,
    required this.symptomTime,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SymptomsCardState createState() => _SymptomsCardState();
}

class _SymptomsCardState extends State<SymptomsCard> {
  double _currentSliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      // margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.symptomName,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: UIColor.textMain,
              ),
            ),
            const SizedBox(height: 14.0),
            Text(
              widget.symptomDescription,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                color: UIColor.textMain,
              ),
            ),
            const SizedBox(height: 14.0),
            Text(
              '${widget.symptomDate}      ${widget.symptomTime}',
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: UIColor.textMain,
              ),
            ),
            const SizedBox(height: 14.0),
            const Row(
              children: [
                Text(
                  'Pain Level',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: UIColor.textMain,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 10, // Define a altura do track do slider
                      thumbColor: UIColor.sliderControl,
                      activeTrackColor: UIColor.sliderControl,
                      inactiveTrackColor: UIColor.iconsColor,
                    ),
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 10,
                      divisions: 10,
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 14.0),
                Text(
                  _currentSliderValue.round().toString(),
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: UIColor.textMain,
                  ),
                ),
              ],
            ),
            Row(
              children: [
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
          ],
        ),
      ),
    );
  }
}
