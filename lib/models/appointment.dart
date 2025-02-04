import 'package:cloud_firestore/cloud_firestore.dart';

class Appointment {
  final String doctorName;
  final String doctorSpecialty;
  final String email;
  final String phone;
  final String date;
  final String time;
  final String address;

  Appointment({
    required this.doctorName,
    required this.doctorSpecialty,
    required this.email,
    required this.phone,
    required this.date,
    required this.time,
    required this.address,
  });

  // Method to convert the data from Firestore to the Appointment object
  factory Appointment.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Appointment(
      doctorName: data['doctorName'] ?? '',
      doctorSpecialty: data['doctorSpecialty'] ?? '',
      email: data['email'] ?? '',
      phone: data['phone'] ?? '',
      date: data['date'] ?? '',
      time: data['time'] ?? '',
      address: data['address'] ?? '',
    );
  }

  // Method to convert the Appointment object to a Map
  Map<String, dynamic> toFirestore() {
    return {
      'doctorName': doctorName,
      'doctorSpecialty': doctorSpecialty,
      'email': email,
      'phone': phone,
      'date': date,
      'time': time,
      'address': address,
    };
  }
}