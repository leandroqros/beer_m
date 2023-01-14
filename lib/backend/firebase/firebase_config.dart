import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAuHfBY76uQWaUndzMCGKtCYgBle4C7Fys",
            authDomain: "beerm-7efae.firebaseapp.com",
            projectId: "beerm-7efae",
            storageBucket: "beerm-7efae.appspot.com",
            messagingSenderId: "648025098725",
            appId: "1:648025098725:web:43976617183b8b6f65870c",
            measurementId: "G-J57LYXCSWD"));
  } else {
    await Firebase.initializeApp();
  }
}
