import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/features/Welcome/welcome_screen.dart';
import 'package:mam_projekt_v1/repositories/mock_database.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({
    super.key,
  });

  final MockDatabase mockDataBase = MockDatabase();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            //theme: mamTheme,
            WelcomeScreen(mockDataBase: mockDataBase),
      ),
    );
  }
}
