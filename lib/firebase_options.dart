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
    apiKey: 'AIzaSyBHKlGIbuZskSphKCJW0F1L1dAjs7B4fVs',
    appId: '1:213699759438:web:a6f3548794c32e024d221f',
    messagingSenderId: '213699759438',
    projectId: 'guzzler-62953',
    authDomain: 'guzzler-62953.firebaseapp.com',
    storageBucket: 'guzzler-62953.appspot.com',
    measurementId: 'G-SMSJ1ZQBJF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBq0cEJ-QZd_WFOtz-3AeCOEubydXwkSds',
    appId: '1:213699759438:android:c3b5f66e3cc3d14d4d221f',
    messagingSenderId: '213699759438',
    projectId: 'guzzler-62953',
    storageBucket: 'guzzler-62953.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD196DyM3PLDNviXCZIr2KdzJJWR3XwbMo',
    appId: '1:213699759438:ios:661b2f7d6d8148e74d221f',
    messagingSenderId: '213699759438',
    projectId: 'guzzler-62953',
    storageBucket: 'guzzler-62953.appspot.com',
    iosBundleId: 'com.example.guzzler',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD196DyM3PLDNviXCZIr2KdzJJWR3XwbMo',
    appId: '1:213699759438:ios:328b3cc922bf82544d221f',
    messagingSenderId: '213699759438',
    projectId: 'guzzler-62953',
    storageBucket: 'guzzler-62953.appspot.com',
    iosBundleId: 'com.example.guzzler.RunnerTests',
  );
}