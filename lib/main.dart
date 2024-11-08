// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/information_card_data.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/screens/add_new_trash_screen.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/screens/complete_list_screen.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';
import 'package:mam_projekt_v1/features/Welcome/welcome_screen.dart';
import 'package:mam_projekt_v1/repositories/database_repository.dart';
import 'package:mam_projekt_v1/repositories/mock_database.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({
    super.key,
  });

  final MockDatabase mockDatabase = MockDatabase();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            //theme: mamTheme,
            WelcomeScreen(),
      ),
    );
  }
}
