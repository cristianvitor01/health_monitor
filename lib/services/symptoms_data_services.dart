import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/symptoms.dart';

// Class to handle the data from Firestore
class SymptomsDataService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Method to add the Symptoms object to Firestore
  Future<void> addSymptoms(Symptoms symptoms) async {
    await _db.collection('symptoms').add(symptoms.toMap());
  }

  // Method to fetch the Symptoms object from Firestore
  Future<List<Symptoms>> fetchSymptoms() async {
    var snapshot = await _db.collection('symptoms').get();
    return snapshot.docs.map((doc) => Symptoms.fromFirestore(doc)).toList();
  }
}