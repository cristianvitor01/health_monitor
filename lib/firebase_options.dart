// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqsRfHDXyep0_V_3LqwoCFZePv36DGm18',
    appId: '1:961616657380:web:eaa68a9a3a4f8b51c3e5f1',
    messagingSenderId: '961616657380',
    projectId: 'health-monitor-cf276',
    authDomain: 'health-monitor-cf276.firebaseapp.com',
    storageBucket: 'health-monitor-cf276.firebasestorage.app',
    measurementId: 'G-FQPJNTRSQ9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaqKEanETCRYzzVE4mGmT97krdSltQdAI',
    appId: '1:961616657380:android:16ba3270deef7b2dc3e5f1',
    messagingSenderId: '961616657380',
    projectId: 'health-monitor-cf276',
    storageBucket: 'health-monitor-cf276.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtm9DbsbMmcLn6gGU4T-0AVBDWSvnQa5o',
    appId: '1:961616657380:ios:84a3b5d21f82eb2fc3e5f1',
    messagingSenderId: '961616657380',
    projectId: 'health-monitor-cf276',
    storageBucket: 'health-monitor-cf276.firebasestorage.app',
    iosBundleId: 'com.example.healthMonitor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtm9DbsbMmcLn6gGU4T-0AVBDWSvnQa5o',
    appId: '1:961616657380:ios:84a3b5d21f82eb2fc3e5f1',
    messagingSenderId: '961616657380',
    projectId: 'health-monitor-cf276',
    storageBucket: 'health-monitor-cf276.firebasestorage.app',
    iosBundleId: 'com.example.healthMonitor',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqsRfHDXyep0_V_3LqwoCFZePv36DGm18',
    appId: '1:961616657380:web:e16b904790893272c3e5f1',
    messagingSenderId: '961616657380',
    projectId: 'health-monitor-cf276',
    authDomain: 'health-monitor-cf276.firebaseapp.com',
    storageBucket: 'health-monitor-cf276.firebasestorage.app',
    measurementId: 'G-EYZF1KC8E7',
  );
}
