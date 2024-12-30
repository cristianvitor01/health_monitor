import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../widgets/search_box.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Espaçamento consistente
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: SearchBox(
                      hintText: 'Search your records',
                      icon: Icon(Icons.search, color: UIColor.textMain),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Adicione funcionalidade ao botão 'Cancel'
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: UIColor.textMain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView(
                  children: const [
                    SuggestionTile(
                      icon: Icons.medical_services,
                      title: 'Last seen appointment',
                    ),
                    SuggestionTile(
                      icon: Icons.medication,
                      title: 'Last searched medication',
                    ),
                    SuggestionTile(
                      icon: Icons.edit,
                      title: 'Last searched symptom',
                    ),
                    SuggestionTile(
                      icon: Icons.upload_file,
                      title: 'Last seen file',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestionTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const SuggestionTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: UIColor.textMain),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: UIColor.textMain,
        ),
      ),
    );
  }
}
