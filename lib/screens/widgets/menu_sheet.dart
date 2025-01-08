import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class MenuSheet extends StatelessWidget {
  const MenuSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Container(
          height:
              MediaQuery.of(context).size.height*0.9, 
          decoration: const BoxDecoration(
            color: UIColor.backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0),
              topRight: Radius.circular(28.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'DONE',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          height: 1.43,
                          letterSpacing: 0.10,
                          color: UIColor.textMain,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 60.0),
              const Text(
                'Main Menu',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                  letterSpacing: -1.20,
                  color: UIColor.textMain,
                ),
              ),
              const SizedBox(height: 35.0),
              const  Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.home,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'Dashboard',
                    style: TextStyle(
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
              const SizedBox(height: 35.0),
              const Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.medical_information,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'Medical Information',
                    style: TextStyle(
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
              const SizedBox(height: 35.0),
              const Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.settings,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'Account Settings',
                    style: TextStyle(
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
              const SizedBox(height: 60.0),
              const Text(
                'Preferences',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                  letterSpacing: -1.20,
                  color: UIColor.textMain,
                ),
              ),
              const SizedBox(height: 35.0),
              const Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.notifications,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'App Preferences',
                    style: TextStyle(
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
              const SizedBox(height: 35.0),
              const Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.credit_card,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'Subscription & Billing',
                    style: TextStyle(
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
              const SizedBox(height: 240.0),
              const Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.upload,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'Export your Medical Data',
                    style: TextStyle(
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
              const SizedBox(height: 35.0),
              const Row(
                children: [
                  Icon(
                    size: 25.0,
                    Icons.info,
                    color: UIColor.textMain,
                  ),
                  SizedBox(width: 22.0),
                  Text(
                    'Help',
                    style: TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}
