import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 2,
      color: UIColor.advertisementCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/images/vitamin-pills.png'), // Caminho da imagem
                  height: 124, // Altura da imagem
                  width: 124, // Largura da imagem
                  fit: BoxFit.cover, // Ajuste da imagem
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Medication Name',
                        style: TextStyle(
                          color: UIColor.textMain,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Advertising Copy goes here',
                        style: TextStyle(
                          color: UIColor.textMain,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}