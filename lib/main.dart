import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:optical_app_v2/app/locator.dart';
import 'package:optical_app_v2/ui/general_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyBNtOHvmkTsmwWwLRFy8XhlCSJ1J4pXkA4',
          appId: "1:728626471149:web:58e490e9cad194aa61ece4",
          messagingSenderId: "728626471149",
          projectId: "tuvision-21b46"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: GeneralView());
  }
}
