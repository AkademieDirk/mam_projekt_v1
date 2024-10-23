import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: background,
        child: SafeArea(
          child: Column(
            children: [
              verticalBigSpacing,
              Text(
                "Hier die neuesten News",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              verticalSpacing,
              Column(children: [
                Text(
                  "Hier kommt die Überschrift rein",
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ]),
              verticalSpacing,
              const Image(
                  image: AssetImage("assets/images/News/Newsimage.png")),
              verticalBigSpacing,
              Column(children: [
                Text(
                  "Hier kommt die Überschrift rein",
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ]),
              verticalSpacing,
              const Image(image: AssetImage("assets/images/News/Newsimage.png"))
            ],
          ),
        ));
  }
}
