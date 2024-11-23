import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/screens/list_view_trash.dart';

import 'package:mam_projekt_v1/repositories/mock_database.dart';

class TrashAbcScreen extends StatelessWidget {
  TrashAbcScreen({
    super.key,
  });
  final MockDatabase mockDatabase = MockDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        title: "Abfall ABC",
        textcolor: Colors.black,
        canColorImagePath:
            'assets/images/TrashCanColor/Fragezeichen_transparent.png',
      ),
      body: Container(
        decoration: background,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: ListViewTrash(mockDatabase: mockDatabase),
        ),
      ),
    );
  }
}
