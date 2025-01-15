import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FirestoreTestPage extends StatelessWidget {
  const FirestoreTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firestore Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Escrever dados no Firestore
                await FirebaseFirestore.instance.collection('test').add({
                  'timestamp': FieldValue.serverTimestamp(),
                  'message': 'Hello, Firestore!',
                });
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Data written to Firestore')),
                );
              },
              child: const Text('Write to Firestore'),
            ),
            ElevatedButton(
              onPressed: () async {
                // Ler dados do Firestore
                var snapshot = await FirebaseFirestore.instance.collection('test').get();
                var documents = snapshot.docs;
                for (var doc in documents) {
                  // ignore: avoid_print
                  print(doc.data());
                }
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Data read from Firestore')),
                );
              },
              child: const Text('Read from Firestore'),
            ),
          ],
        ),
      ),
    );
  }
}