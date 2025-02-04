import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import '../models/appointment.dart';

// TODO: Refactor AppointmentDataService, insert try-catch block

class AppointmentDataServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Method to add the Medication object to Firestore
  Future<void> addMedication(Appointment info) async {
    try {
      await _db.collection('appointment').add(info.toFirestore());
    } catch (e) {
      if (kDebugMode) {
        print('Error adding appointment: $e');
      }
    }
  }

  // Method to fetch(buscar) the Medication object from Firestore
  Future<List<Appointment>> fetchAppointment() async {
    var snapshot = await _db.collection('appointment').get();
    return List.from(snapshot.docs.map((doc) => Appointment.fromFirestore(doc)));
  }

}