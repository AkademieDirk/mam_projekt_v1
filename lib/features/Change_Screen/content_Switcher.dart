import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/repository/information_card_data.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/screens/trash_abc_screen.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/switcher_container.dart';
import 'package:mam_projekt_v1/features/Kalender/calender_main_screen.dart';
import 'package:mam_projekt_v1/features/News/news_screen.dart';

class ContentSwitcher extends StatelessWidget {
  const ContentSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: background,
            child: Column(children: [
              verticalBigSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CalendarMainScreen()));
                },
                child: const SwitcherContainer(
                  picturepath: "assets/icons/ContentSwitcher/Calendar.png",
                  text: "Kalender",
                ),
              ),
              verticalSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NewsScreen()));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/News.png",
                    text: "News"),
              ),
              verticalSpacing,
              const SwitcherContainer(
                  picturepath: "assets/icons/ContentSwitcher/Phone.png",
                  text: "Service"),
              verticalSpacing,
              const SwitcherContainer(
                  picturepath: "assets/icons/ContentSwitcher/Recycling.png",
                  text: "Recycle"),
              verticalSpacing,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TrashAbcScreen(
                                trashdata: trashdata,
                              )));
                },
                child: const SwitcherContainer(
                    picturepath: "assets/icons/ContentSwitcher/AbfallABC.png",
                    text: "Abfall ABC"),
              )
            ])));
  }
}
