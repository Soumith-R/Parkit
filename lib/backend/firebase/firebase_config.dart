import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCEcyiRMH4yWMHOeYw1mx3VYAIfIMrpzqw",
            authDomain: "smartpark-4ie4q1.firebaseapp.com",
            projectId: "smartpark-4ie4q1",
            storageBucket: "smartpark-4ie4q1.appspot.com",
            messagingSenderId: "550083797782",
            appId: "1:550083797782:web:308fcbd774d27e8e43e637"));
  } else {
    await Firebase.initializeApp();
  }
}
