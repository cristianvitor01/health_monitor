import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class SearchBox extends StatelessWidget {
  final String hintText; // Texto de dica
  final Icon icon;

  const SearchBox({
    super.key,
    this.hintText = 'Pesquisar...',
    this.icon = const Icon(Icons.search)
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(14.0)
      ),
      child: TextField(
        style: const TextStyle(
          fontSize: 14, 
          fontFamily: 'Poppins'),
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: icon,
        ),
      ),
    );
  }
}