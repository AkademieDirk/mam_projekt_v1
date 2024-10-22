import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
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
        top: 80,
        left: 148,
        child: Column(children: [
          SwitcherContainer(
            picturepath: "assets/icons/Calendar.png",
            text: "Kalender",
          ),
          verticalSpacing,
          SwitcherContainer(picturepath: "assets/icons/News.png", text: "News"),
          verticalSpacing,
          SwitcherContainer(
              picturepath: "assets/icons/ContentSwitcher/Phone.png",
              text: "Service"),
          verticalSpacing,
          SwitcherContainer(
              picturepath: "assets/icons/ContentSwitcher/Recycling.png",
              text: "Recycle"),
          verticalSpacing,
          SwitcherContainer(
              picturepath: "assets/icons/ContentSwitcher/AbfallABC.png",
              text: "Abfall ABC")
        ]),
      )
    ]));
  }
}
