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
    apiKey: 'AIzaSyBQgiRRPcPUDZpKqB1YfiHMmgMj79tOCFc',
    appId: '1:465548787486:web:1074f101f4c9955e16130f',
    messagingSenderId: '465548787486',
    projectId: 'hobby-interests-app',
    authDomain: 'hobby-interests-app.firebaseapp.com',
    storageBucket: 'hobby-interests-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm6IerfUdLnekNuNaUkc-w7KUojw63uBY',
    appId: '1:465548787486:android:4ef79e614315bc0516130f',
    messagingSenderId: '465548787486',
    projectId: 'hobby-interests-app',
    storageBucket: 'hobby-interests-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD165bO699n4X8GQpK5aW4uEkeUAy9sUcw',
    appId: '1:465548787486:ios:ca9508af06375b6d16130f',
    messagingSenderId: '465548787486',
    projectId: 'hobby-interests-app',
    storageBucket: 'hobby-interests-app.appspot.com',
    iosBundleId: 'com.example.hobbyInterestsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD165bO699n4X8GQpK5aW4uEkeUAy9sUcw',
    appId: '1:465548787486:ios:ca9508af06375b6d16130f',
    messagingSenderId: '465548787486',
    projectId: 'hobby-interests-app',
    storageBucket: 'hobby-interests-app.appspot.com',
    iosBundleId: 'com.example.hobbyInterestsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBQgiRRPcPUDZpKqB1YfiHMmgMj79tOCFc',
    appId: '1:465548787486:web:62b8cb6bcdea489816130f',
    messagingSenderId: '465548787486',
    projectId: 'hobby-interests-app',
    authDomain: 'hobby-interests-app.firebaseapp.com',
    storageBucket: 'hobby-interests-app.appspot.com',
  );
}