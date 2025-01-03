import 'package:flutter/material.dart';
import '../../utils/app_colors.dart'; 


class SearchBox extends StatelessWidget {
  final String hintText; // Texto de dica
  final Icon icon;

  const SearchBox({
    super.key,
    this.hintText = 'Search...',
    this.icon = const Icon(Icons.search)
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Controla o espaço entre o texto e o icone
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [ //pequena sombra
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6.0,
            offset: const Offset(0, 1)
          ),
        ],
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center, // Centraliza verticalmente
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: 1.43,
          letterSpacing: 0.25,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: UIColor.textMain,
             // Cor do texto de dica
          ),
          border: InputBorder.none,
          suffixIcon: icon,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 14.0, // Centraliza o texto verticalmente
            horizontal: 16.0, // Ajusta o espaçamento horizontal
          ),
        ),
      ),
    );
  }
}