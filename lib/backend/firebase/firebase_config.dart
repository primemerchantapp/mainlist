import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyALYyIyYw-uJE0k9MQsbACeWb22ziZW7L8",
            authDomain: "potent-bulwark-434423-t6.firebaseapp.com",
            projectId: "potent-bulwark-434423-t6",
            storageBucket: "potent-bulwark-434423-t6.appspot.com",
            messagingSenderId: "882839078564",
            appId: "1:882839078564:web:b3de01a61fb74e2f04c831",
            measurementId: "G-4JFNTX6YJ6"));
  } else {
    await Firebase.initializeApp();
  }
}
