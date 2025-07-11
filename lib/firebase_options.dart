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
    apiKey: 'AIzaSyBZq2F6ppfO9vyMC81WabJoRccJrr0L0Ko',
    appId: '1:1056822406926:web:a4ace4e29ff380ea04715f',
    messagingSenderId: '1056822406926',
    projectId: 'mykitchenapp-27b2d',
    authDomain: 'mykitchenapp-27b2d.firebaseapp.com',
    databaseURL: 'https://mykitchenapp-27b2d-default-rtdb.firebaseio.com',
    storageBucket: 'mykitchenapp-27b2d.firebasestorage.app',
    measurementId: 'G-M0RHE532VW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEhwn6m2YgzkaZcd_2Z0NeuUmXGbY49ZI',
    appId: '1:1056822406926:android:21e41d227bab47eb04715f',
    messagingSenderId: '1056822406926',
    projectId: 'mykitchenapp-27b2d',
    databaseURL: 'https://mykitchenapp-27b2d-default-rtdb.firebaseio.com',
    storageBucket: 'mykitchenapp-27b2d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlbh06xVxvHF78jZuKJSXlF3pW5PQzVdM',
    appId: '1:1056822406926:ios:7585040ab796919604715f',
    messagingSenderId: '1056822406926',
    projectId: 'mykitchenapp-27b2d',
    databaseURL: 'https://mykitchenapp-27b2d-default-rtdb.firebaseio.com',
    storageBucket: 'mykitchenapp-27b2d.firebasestorage.app',
    iosBundleId: 'com.example.mykitchenapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlbh06xVxvHF78jZuKJSXlF3pW5PQzVdM',
    appId: '1:1056822406926:ios:7585040ab796919604715f',
    messagingSenderId: '1056822406926',
    projectId: 'mykitchenapp-27b2d',
    databaseURL: 'https://mykitchenapp-27b2d-default-rtdb.firebaseio.com',
    storageBucket: 'mykitchenapp-27b2d.firebasestorage.app',
    iosBundleId: 'com.example.mykitchenapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBZq2F6ppfO9vyMC81WabJoRccJrr0L0Ko',
    appId: '1:1056822406926:web:5384424dbb8846fc04715f',
    messagingSenderId: '1056822406926',
    projectId: 'mykitchenapp-27b2d',
    authDomain: 'mykitchenapp-27b2d.firebaseapp.com',
    databaseURL: 'https://mykitchenapp-27b2d-default-rtdb.firebaseio.com',
    storageBucket: 'mykitchenapp-27b2d.firebasestorage.app',
    measurementId: 'G-G2MFM7J0B5',
  );
}
