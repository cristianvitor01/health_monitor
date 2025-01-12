import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(26.0),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BackButton(
                      color: UIColor.textMain,
                      onPressed: () {
                        Navigator.pop(context); // Navega para a página anterior
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                const Row(
                  children: [
                    Text(
                      'Scan Document',
                      style: TextStyle(
                        color: UIColor.textMain,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        letterSpacing: -1.20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                // Camera
                Container(
                  width: 214,
                  height: 214,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 5, color: UIColor.textMain),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: UIColor.textMain,
                        size: 60.0,
                      ),
                      onPressed: () {
                        debugPrint('Camera icon presionado');
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                const Row(
                  children: [
                    Text(
                      'Upload from Phone',
                      style: TextStyle(
                        color: UIColor.textMain,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        letterSpacing: -1.20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Container(
                  width: 214,
                  height: 214,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 5, color: UIColor.textMain),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.upload_file,
                        color: UIColor.textMain,
                        size: 60.0,
                      ),
                      onPressed: () {
                        debugPrint('Upload icon pressionado');
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 20.0,
              right: 22.0,
              child: PopupMenuButtonWidget(), // Adicionando o PopupMenuButtonWidget
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
      ),
    );
  }
}