import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';

//TODO: implement image flow

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  File? _imageFile;

  Future<void> _takePhoto() async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  Future<void> _pickImage() async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

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
                      onPressed: _takePhoto,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                if (_imageFile != null)
                  Image.file(
                    _imageFile!,
                    width: 214,
                    height: 214,
                    fit: BoxFit.cover,
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
                      onPressed: _pickImage,
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
