import 'package:cloud_firestore/cloud_firestore.dart';

class Medication {
  final String medicationImage;
  final String medicationName;
  final String medicationDescription;
  final String daily;
  final String time1;
  final String time2;

  const Medication({
    required this.medicationImage,
    required this.medicationName,
    required this.medicationDescription,
    required this.daily,
    required this.time1,
    required this.time2,
  });

  // TODO: update medication to upload image from firebase

  // Method to convert the data from Firestore to the Medication object
  factory Medication.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return Medication(
      medicationImage: data['medicationImage'] ?? '',
      medicationName: data['medicationName'] ?? '',
      medicationDescription: data['medicationDescription'] ?? '',
      daily: data['daily'] ?? '',
      time1: data['time1'] ?? '',
      time2: data['time2'] ?? '',
    );
  }

  // Method to convert the Medication object to Firestore data
  Map<String, dynamic> toFirestore() {
    return {
      'medicationImage': medicationImage, 
      'medicationName': medicationName,
      'medicationDescription': medicationDescription,
      'daily': daily,
      'time1': time1,
      'time2': time2,
    };
  }

}