import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:optical_app_v2/app/locator.dart';
import 'package:optical_app_v2/ui/general_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: GeneralView());
  }
}
