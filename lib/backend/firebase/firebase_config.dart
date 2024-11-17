import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAfbenI0OPWz_Ot363odQfhsERS-YRAYos",
            authDomain: "test-nq15yq.firebaseapp.com",
            projectId: "test-nq15yq",
            storageBucket: "test-nq15yq.firebasestorage.app",
            messagingSenderId: "338894051424",
            appId: "1:338894051424:web:067376d84e72257598cb05"));
  } else {
    await Firebase.initializeApp();
  }
}
