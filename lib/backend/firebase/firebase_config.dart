import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA-YvJpJ1UZKtDsc_menPv09SKRKmRIxH0",
            authDomain: "mypass-79297.firebaseapp.com",
            projectId: "mypass-79297",
            storageBucket: "mypass-79297.appspot.com",
            messagingSenderId: "637583391274",
            appId: "1:637583391274:web:06e2bf8e50176a9a13a153"));
  } else {
    await Firebase.initializeApp();
  }
}
