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
    apiKey: 'AIzaSyAf3VHDN-As0KyFQI8-i0JGi6XKQp5WFKY',
    appId: '1:784650553110:web:cac85443bca8b8407d3237',
    messagingSenderId: '784650553110',
    projectId: 'aabu-17157',
    authDomain: 'aabu-17157.firebaseapp.com',
    storageBucket: 'aabu-17157.firebasestorage.app',
    measurementId: 'G-1JRH8J51EJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBB_dzCRfDHNAwobhbdgE3zcEX0aciFIk8',
    appId: '1:784650553110:android:f7cbd48de1747d9b7d3237',
    messagingSenderId: '784650553110',
    projectId: 'aabu-17157',
    storageBucket: 'aabu-17157.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHyj-jcC1avootB1Xi8i3IHcDOo2n-5KI',
    appId: '1:784650553110:ios:9555109343d52f587d3237',
    messagingSenderId: '784650553110',
    projectId: 'aabu-17157',
    storageBucket: 'aabu-17157.firebasestorage.app',
    iosBundleId: 'jo.edu.aabu.aabu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHyj-jcC1avootB1Xi8i3IHcDOo2n-5KI',
    appId: '1:784650553110:ios:9555109343d52f587d3237',
    messagingSenderId: '784650553110',
    projectId: 'aabu-17157',
    storageBucket: 'aabu-17157.firebasestorage.app',
    iosBundleId: 'jo.edu.aabu.aabu',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAf3VHDN-As0KyFQI8-i0JGi6XKQp5WFKY',
    appId: '1:784650553110:web:5a806945f58469817d3237',
    messagingSenderId: '784650553110',
    projectId: 'aabu-17157',
    authDomain: 'aabu-17157.firebaseapp.com',
    storageBucket: 'aabu-17157.firebasestorage.app',
    measurementId: 'G-36V9E8Q5T1',
  );

}