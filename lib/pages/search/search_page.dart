import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import '../../widgets/search_box.dart';
import '../../widgets/bottom_nav_bar.dart';
// import '../medications/medication_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26.0), // Espaçamento consistente
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
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                          letterSpacing: 0.10,
                          color: UIColor.textMain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/appointment'),
                        child: const SuggestionTile(
                          icon: Icons.medical_services,
                          title: 'Last seen appointment',
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/medications'),
                        child: const SuggestionTile(
                          icon: Icons.medication,
                          title: 'Last searched medication',
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/symptoms'),
                        child: const SuggestionTile(
                          icon: Icons.edit,
                          title: 'Last searched symptom',
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/upload'),
                        child: const SuggestionTile(
                          icon: Icons.upload_file,
                          title: 'Last seen file',
                        ),
                      ),
                      const SizedBox(height: 25.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar(), // Barra de navegação fixa
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
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Row(
        children: [
          Icon(icon, color: UIColor.textMain),
          const SizedBox(width: 22.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 1.50,
              letterSpacing: 0.15,
              color: UIColor.textMain,
            ),
          ),
        ],
      ),
    );
  }
}
