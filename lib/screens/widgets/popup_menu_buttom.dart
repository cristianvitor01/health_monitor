import 'package:flutter/material.dart';
import 'package:health_monitor/utils/app_colors.dart';
// import '../utils/app_colors.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.edit, color: UIColor.textMain,),
              title: Text(
                'NEW SYMPTOM',
                style: TextStyle(color: UIColor.textMain),                
              ),
            ),
          ),
          const PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.medical_services, color: UIColor.textMain,),
              title: Text(
                'NEW MEDICATION',
                style: TextStyle(color: UIColor.textMain),
              ),
            ),
          ),
          const PopupMenuItem(
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: UIColor.textMain,),
              title: Text(
                'NEW APPOINTMENT',
                style: TextStyle(color: UIColor.textMain),
              ),
            ),
          ),
        ];
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(13.34),
        ),
        padding: const EdgeInsets.all(16.0),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32.0,
        ),
      ),
    );
  }
}