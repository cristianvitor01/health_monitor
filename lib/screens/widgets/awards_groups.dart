import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class AwardsGroups extends StatelessWidget {
  const AwardsGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Padding(
            padding: EdgeInsets.all(32),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 month streak ',
                      style: TextStyle(
                        color: UIColor.textMain,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.27,
                      ),
                    ),
                    SizedBox(height: 31),
                    SizedBox(
                      width: 248,
                      child: Text(
                        'Congratulations! You were diligent and filled out your symptoms every day for a whole month! Be proud of yourself :)',
                        style: TextStyle(
                          color: UIColor.textMain,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -20, 
            right: 16, 
            child: FloatingActionButton(
              onPressed: () {
                // funcionalidade do botão
              },
              backgroundColor: UIColor.plusFAB,
              child: const Icon(Icons.share, color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}