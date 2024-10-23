import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Kalender/calendar_card_widget.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/expanded_sized_box.dart';

class CalendarMainScreen extends StatelessWidget {
  const CalendarMainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: background,
            child: Column(
              children: [
                verticalBigSpacing,
                verticalBigSpacing,
                Text("Welche Termine wollen Sie sehen?",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  children: [
                    ExpandedSizedBox(),
                    CalendarCardWidget(
                      picturePath: "assets/icons/Calendar/heute.png",
                      text: "Heute",
                    ),
                    ExpandedSizedBox(),
                    CalendarCardWidget(
                        picturePath: "assets/icons/Calendar/morgen.png",
                        text: "Morgen"),
                    ExpandedSizedBox(),
                  ],
                ),
                verticalBigSpacing,
                const Row(
                  children: [
                    ExpandedSizedBox(),
                    CalendarCardWidget(
                      picturePath: "assets/icons/Calendar/week.png",
                      text: "Woche",
                    ),
                    ExpandedSizedBox(),
                    CalendarCardWidget(
                        picturePath: "assets/icons/Calendar/Monat.png",
                        text: "Monat"),
                    ExpandedSizedBox(),
                  ],
                ),
                verticalBigSpacing,
                const Row(
                  children: [
                    ExpandedSizedBox(),
                    CalendarCardWidget(
                      picturePath: "assets/icons/Calendar/all.png",
                      text: "Alle Termine",
                    ),
                    ExpandedSizedBox(),
                    CalendarCardWidget(
                        picturePath: "assets/icons/Calendar/Einstellungen.png",
                        text: "Einstellungen"),
                    ExpandedSizedBox(),
                  ],
                ),
              ],
            )));
  }
}
