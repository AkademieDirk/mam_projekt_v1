import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/switcher_container.dart';

class ContentSwitcher extends StatelessWidget {
  const ContentSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                backgroundGradientStartColor,
                backgroundGradientEndColor
              ]),
        ),
      ),
      const Positioned(
        top: 140,
        left: 160,
        child: Column(children: [
          SwitcherContainer(
            picturepath: "assets/icons/Calendar.png",
            text: "Kalender",
          )
        ]),
      )
    ]));
  }
}
