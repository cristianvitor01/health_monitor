import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'WHO Guidelines',
                    style: TextStyle( 
                      color: UIColor.textMain,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'The WHO just announced new Guidelines for their approach to patient centric care. The digitalization of healthcare worldwide shall be strengthened by this new approach.',
                    style: TextStyle(
                      color: UIColor.textMain,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(width: 16.0),
            Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('assets/images/doctor_news.png'), // Caminho da imagem
                height: 108.19, // Altura da imagem
                width: 90.0, // Largura da imagem
                fit: BoxFit.fill, // Ajuste da imagem
              ),
            ),
          ],
        ),
      ),
    );
  }
}