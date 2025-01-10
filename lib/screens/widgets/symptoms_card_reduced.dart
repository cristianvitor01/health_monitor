import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class SymptomsCardReduced extends StatefulWidget {
  final String symptomName;
  final String symptomDescription;
  final String symptomDate;
  final String symptomTime;

  const SymptomsCardReduced({
    super.key,
    required this.symptomName,
    required this.symptomDescription,
    required this.symptomDate,
    required this.symptomTime,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SymptomsCardReducedState createState() => _SymptomsCardReducedState();
}

class _SymptomsCardReducedState extends State<SymptomsCardReduced> {
  double _currentSliderValue = 0;

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
            // Name
            Text(
              widget.symptomName,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: UIColor.textMain,
              ),
            ),
            const SizedBox(height: 24.0),
            Visibility(
              visible: false,
              child: Text(
                widget.symptomDescription,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: UIColor.textMain,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.symptomDate,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: UIColor.textMain,
                  ),
                ),
                Text(
                  widget.symptomTime,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: UIColor.textMain,
                  ),
                ),
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
                      Navigator.pushNamed(context, '/edit-symptoms');
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14.0),
            const Visibility(
              visible: false,
              child: Row(
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
            ),
            // Pain level slider
            Visibility(
              visible: false,
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}