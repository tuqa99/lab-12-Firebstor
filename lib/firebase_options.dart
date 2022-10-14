// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD110luJi0Ei8Y3qbDSKjdo2iwDKbrEU7M',
    appId: '1:370927389433:web:bc14c9cb0937f64be73028',
    messagingSenderId: '370927389433',
    projectId: 'fire-store-d99af',
    authDomain: 'fire-store-d99af.firebaseapp.com',
    storageBucket: 'fire-store-d99af.appspot.com',
    measurementId: 'G-4KS80M2TQJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBukO1Pu2RMx4Gxjnxo8wFHj36M_i-owno',
    appId: '1:370927389433:android:49a2be7255108a14e73028',
    messagingSenderId: '370927389433',
    projectId: 'fire-store-d99af',
    storageBucket: 'fire-store-d99af.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeU1uR9xujtjCvSzU9JpVnxSYiowXEykg',
    appId: '1:370927389433:ios:a06f7d3c3668d8f4e73028',
    messagingSenderId: '370927389433',
    projectId: 'fire-store-d99af',
    storageBucket: 'fire-store-d99af.appspot.com',
    iosClientId: '370927389433-atrbc4q2mtq9t3uihdgokje0iskk46md.apps.googleusercontent.com',
    iosBundleId: 'com.example.firestorapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCeU1uR9xujtjCvSzU9JpVnxSYiowXEykg',
    appId: '1:370927389433:ios:a06f7d3c3668d8f4e73028',
    messagingSenderId: '370927389433',
    projectId: 'fire-store-d99af',
    storageBucket: 'fire-store-d99af.appspot.com',
    iosClientId: '370927389433-atrbc4q2mtq9t3uihdgokje0iskk46md.apps.googleusercontent.com',
    iosBundleId: 'com.example.firestorapp',
  );
}
