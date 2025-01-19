import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../models/medication.dart';

// TODO: Refactor MedicationDataService, insert try-catch block

class MedicationDataService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Method to add the Medication object to Firestore
  Future<void> addMedication(Medication info) async {
    try {
      await _db.collection('medication').add(info.toFirestore());
    } catch (e) {
      if (kDebugMode) {
        print('Error adding medication: $e');
      }
    }
  }

  // Method to fetch(buscar) the Medication object from Firestore
  Future<List<Medication>> fetchMedication() async {
    var snapshot = await _db.collection('medication').get();
    return List.from(snapshot.docs.map((doc) => Medication.fromFirestore(doc)));
  }

}