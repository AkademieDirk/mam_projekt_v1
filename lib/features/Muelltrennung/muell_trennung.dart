import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Muelltrennung/black_can.dart';
import 'package:mam_projekt_v1/features/Muelltrennung/blue_can.dart';
import 'package:mam_projekt_v1/features/Muelltrennung/brown_can.dart';
import 'package:mam_projekt_v1/features/Muelltrennung/yellow_can.dart';
import 'package:mam_projekt_v1/features/News/garbage_can_%20paint_container.dart';

class Muelltrennung extends StatelessWidget {
  const Muelltrennung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: background,
            child: Column(children: [
              SafeArea(
                  child: Text(" Was gehört in welche Tonne?",
                      style: Theme.of(context).textTheme.bodyMedium)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const YellowCanInformation(),
                      ));
                },
                child: const GarbageCanPaintContainer(
                    text: "Gelbe Tonne",
                    trashcolorimagepath:
                        "assets/images/TrashCanColor/gelbe_Tonne.png"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BlueCanInformation(),
                      ));
                },
                child: const GarbageCanPaintContainer(
                  trashcolorimagepath:
                      "assets/images/TrashCanColor/blaue_Tonne.png",
                  text: "Blaue Tonne",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BrownCanInformation(),
                  ));
                },
                child: const GarbageCanPaintContainer(
                  trashcolorimagepath:
                      "assets/images/TrashCanColor/braune_Tonne.png",
                  text: "braune Tonne",
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BlackCanInformation(),
                  ));
                },
                child: const GarbageCanPaintContainer(
                  trashcolorimagepath:
                      "assets/images/TrashCanColor/schwarz.png",
                  text: "Restmüll Tonne",
                ),
              ),
            ])));
  }
}
