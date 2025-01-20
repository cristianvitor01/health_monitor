import 'package:cloud_firestore/cloud_firestore.dart';

// TODO: Add fild pain level integrad with  _currentSliderValue

class Symptoms {
  final String symptomName;
  final String symptomDescription;
  final String symptomDate;
  final String symptomTime;

  Symptoms({
    required this.symptomName,
    required this.symptomDescription,
    required this.symptomDate,
    required this.symptomTime,
  });

  // Method to convert the data from Firestore to the Symptoms object
  factory Symptoms.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return Symptoms(
      symptomName: data['symptomName'] ?? '',
      symptomDescription: data['symptomDescription'] ?? '',
      symptomDate: data['symptomDate'] ?? '',
      symptomTime: data['symptomTime'] ?? '',
    );
  }

  // Method to convert the Symptoms object to a Map
  Map<String, dynamic> toMap() {
    return {
      'symptomName': symptomName,
      'symptomDescription': symptomDescription,
      'symptomDate': symptomDate,
      'symptomTime': symptomTime,
    };
  }
}