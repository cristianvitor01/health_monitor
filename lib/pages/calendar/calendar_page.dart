import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../widgets/dashboard_head.dart';
import '../../widgets/popup_menu_buttom.dart';
import '../../widgets/bottom_nav_bar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: UIColor.backgroundColor,
        body: Stack(
          children: [
            ListView(
              // Para permitir rolagem
              padding: const EdgeInsets.all(20.0),
              children: [
                const DashboardHeader(title: 'Calendar'), // Cabeçalho no topo
                const SizedBox(height: 16.0), // Espaço entre widgets
                Card(
                  margin: const EdgeInsets.all(16.0),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Your Medical Calendar',
                          style: TextStyle(
                            color: UIColor.textMain,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1.27,
                          ),
                        ),
                        const SizedBox(height: 16.0), // Espaço entre o texto e o calendário
                        const Divider(
                          color: UIColor.textMain, // Cor da linha
                          thickness: 0.5, // Espessura da linha
                        ),
                        TableCalendar(
                          firstDay: DateTime.utc(2023, 01, 01),
                          lastDay: DateTime.utc(2030, 12, 31),
                          focusedDay: _focusedDay,
                          selectedDayPredicate: (day) {
                            return isSameDay(_selectedDay, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                            });
                          },
                          calendarStyle: const CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: UIColor.iconsColor,
                              shape: BoxShape.circle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: UIColor.textMain,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
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