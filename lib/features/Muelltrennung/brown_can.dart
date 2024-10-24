import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

class BrownCanInformation extends StatelessWidget {
  const BrownCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          textcolor: Color.fromARGB(255, 74, 50, 45),
          title: "Die braune Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/braune_Tonne_transparent.png"),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
