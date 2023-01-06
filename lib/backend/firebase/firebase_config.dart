import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBj4GKsaxozqtTs48PBFr7eFFRNSRdqCuc",
            authDomain: "carry-58296.firebaseapp.com",
            projectId: "carry-58296",
            storageBucket: "carry-58296.appspot.com",
            messagingSenderId: "937707777489",
            appId: "1:937707777489:web:415d003502469f2d1684f0",
            measurementId: "G-3CTEPE0B1H"));
  } else {
    await Firebase.initializeApp();
  }
}
