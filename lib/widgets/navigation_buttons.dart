import 'package:flutter/material.dart';

class SearchWithNotifications extends StatelessWidget {
  const SearchWithNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinhando os itens
        children: [
          // Ícone de busca
          const Icon(Icons.search, color: Colors.blue),
          // Caixa de busca com largura definida
          Container(
            width: MediaQuery.of(context).size.width * 0.65, // Definindo 65% da largura da tela
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Busque seus registros',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
          ),
          // Botão de notificação
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.blue),
            onPressed: () {
              // Ação ao clicar no ícone de notificação
            },
          ),
        ],
      ),
    );
  }
}
