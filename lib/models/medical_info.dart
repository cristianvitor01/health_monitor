import 'package:cloud_firestore/cloud_firestore.dart';

class MedicalInfo {
  final String userName;
  final String gender;
  final String bday;
  final String height;
  final String weight;
  final String bloodGroup;
  final DateTime covidVaccine;
  final DateTime tetanusVaccine;
  final DateTime typhusVaccine;
  final DateTime hepatitisVaccine;
  // Surgery
  final DateTime surgery;
  // Allergies
  final String allergies;
  // Emergency Contacts
  final String emergencyContacName;
  final String emergencyContacNumber;
  final String emergencyContacAddress;
  final String emergencyContacEmail;

  MedicalInfo({
    required this.userName,
    required this.gender,
    required this.bday,
    required this.height,
    required this.weight,
    required this.bloodGroup,
    required this.covidVaccine,
    required this.tetanusVaccine,
    required this.typhusVaccine,
    required this.hepatitisVaccine,
    required this.surgery,
    required this.allergies,
    required this.emergencyContacName,
    required this.emergencyContacNumber,
    required this.emergencyContacAddress,
    required this.emergencyContacEmail,
  });


  // Method to convert the data from Firestore to the MedicalInfo object
  factory MedicalInfo.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return MedicalInfo(
      userName: data['userName'] ?? '',
      gender: data['gender'] ?? '',
      bday: data['bday'] ?? '',
      height: data['height'] ?? '',
      weight: data['weight'] ?? '',
      bloodGroup: data['bloodGroup'] ?? '',
      covidVaccine: (data['covidVaccine'] as Timestamp).toDate(),
      tetanusVaccine: (data['tetanusVaccine'] as Timestamp).toDate(),
      typhusVaccine: (data['typhusVaccine'] as Timestamp).toDate(),
      hepatitisVaccine: (data['hepatitisVaccine'] as Timestamp).toDate(),
      surgery: (data['surgery'] as Timestamp).toDate(),
      allergies: data['allergies'] ?? '',
      emergencyContacName: data['emergencyContacName'] ?? '',
      emergencyContacNumber: data['emergencyContacNumber'] ?? '',
      emergencyContacAddress: data['emergencyContacAddress'] ?? '',
      emergencyContacEmail: data['emergencyContacEmail'] ?? '',
    );
  }

  // Method to convert the MedicalInfo object to a map
  Map<String, dynamic> toFirestore() {
    return {
      'userName': userName,
      'gender': gender,
      'bday': bday,
      'height': height,
      'weight': weight,
      'bloodGroup': bloodGroup,
      'covidVaccine': covidVaccine,
      'tetanusVaccine': tetanusVaccine,
      'typhusVaccine': typhusVaccine,
      'hepatitisVaccine': hepatitisVaccine,
      'surgery': surgery,
      'allergies': allergies,
      'emergencyContacName': emergencyContacName,
      'emergencyContacNumber': emergencyContacNumber,
      'emergencyContacAddress': emergencyContacAddress,
      'emergencyContacEmail': emergencyContacEmail,
    };
  }
}