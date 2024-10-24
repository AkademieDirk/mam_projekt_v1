import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

class BlueCanInformation extends StatelessWidget {
  const BlueCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
          title: "Die blaue Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/blaue_Tonne_transparent.png",
          textcolor: Colors.blue),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
