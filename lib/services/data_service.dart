import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/medical_info.dart';

// Class to handle the data from Firestore
class DataService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

 // Method to add the MedicalInfo object to Firestore
  Future<void> addMedicalInfo(MedicalInfo info) async {
    await _db.collection('medical_info').add(info.toFirestore());
  }

  // Method to fetch the MedicalInfo object from Firestore
  Future<List<MedicalInfo>> fetchMedicalInfo() async {
    var snapshot = await _db.collection('medical_info').get();
    return snapshot.docs.map((doc) => MedicalInfo.fromFirestore(doc)).toList();
  }
}