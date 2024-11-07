import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/information_card_data.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';
import 'package:mam_projekt_v1/features/Welcome/welcome_screen.dart';
import 'package:mam_projekt_v1/repositories/database_repository.dart';
import 'package:mam_projekt_v1/repositories/mock_database.dart';

void main() {
  runApp(MainApp(
    trashdata: trashdata,
  ));
}

class MainApp extends StatelessWidget {
  MainApp({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  final DatabaseRepository repository = MockDatabase();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mamTheme,
      home: Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
