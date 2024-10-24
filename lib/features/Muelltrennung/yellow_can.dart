import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

class YellowCanInformation extends StatelessWidget {
  const YellowCanInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
        textcolor: Colors.yellow,
        title: "Die gelbe Tonne",
        canColorImagePath:
            "assets/images/TrashCanColor/gelbe_Tonne_transparent.png",
      ),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Column(
            children: [Text("Test")],
          )),
    );
  }
}
