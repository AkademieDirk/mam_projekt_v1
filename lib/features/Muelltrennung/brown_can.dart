import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

class BrownCanInformation extends StatelessWidget {
  const BrownCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Die braune Tonne",
          canColorImagePath: "assets/images/TrashCanColor/braune_Tonne.png"),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
