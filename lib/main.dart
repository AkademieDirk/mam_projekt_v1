import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/repository/information_card_data.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/screens/trash_abc_screen.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';

void main() {
  runApp(MainApp(
    trashdata: trashdata,
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mamTheme,
      home: Scaffold(
        body: Container(child: TrashAbcScreen(trashdata: trashdata)),

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     InformationCard(trashdata: trashdata),
        //],
      ),
    );
  }
}
