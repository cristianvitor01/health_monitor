import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class TrackReminder extends StatelessWidget {
  final String trackType;

  const TrackReminder(
    {super.key,
    required this.trackType});

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
            Text(
              'Track your $trackType',
              style: const TextStyle(
                color: UIColor.textMain,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 1.33,
                letterSpacing: 0.50,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Icon(
                  Icons.notifications,
                  color: UIColor.textMain,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Reminder',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.71,
                    letterSpacing: 0.50,
                    color: UIColor.textMain,
                  ),
                ),
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
                      debugPrint('Edit button pressed');
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
                    icon: const Icon(
                      Icons.check,
                      color: UIColor.iconsColor,
                    ),
                    onPressed: () {
                      debugPrint('Check button pressed');
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