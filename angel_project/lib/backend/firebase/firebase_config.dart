import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAB0tUbMHzzwe70rhXRYHPpwRYqaxeO2Xo",
            authDomain: "angelproject-da14b.firebaseapp.com",
            projectId: "angelproject-da14b",
            storageBucket: "angelproject-da14b.appspot.com",
            messagingSenderId: "823213311829",
            appId: "1:823213311829:web:9cd330fac3d0cfcbd151dc",
            measurementId: "G-Q033K30W2K"));
  } else {
    await Firebase.initializeApp();
  }
}
