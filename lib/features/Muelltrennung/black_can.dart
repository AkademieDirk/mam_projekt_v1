import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

class BlackCanInformation extends StatelessWidget {
  const BlackCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Die schwarze Tonne",
          canColorImagePath:
              "assets/images/TrashCanColor/schwarz_transparent.png",
          textcolor: Colors.black),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [],
          )),
    );
  }
}
