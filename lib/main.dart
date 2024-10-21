import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/repository/information_card_data.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/information_card_example.dart';
import 'package:mam_projekt_v1/tools/tools.dart';

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
        body: Container(
          decoration: const BoxDecoration(

              // hier wird der Hintergund versehen mit eine Gradient. Die Start un dEndfarben werden aus den Colors geholt
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                backgroundGradientStartColor,
                backgroundGradientEndColor
              ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InformationCard(trashdata: trashdata),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
