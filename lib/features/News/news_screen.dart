import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';
import 'package:mam_projekt_v1/features/News/news_container.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: background,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalBigSpacing,
                Text(
                  "Aktuelle Meldungen",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                verticalSpacing,
                verticalSpacing,
                const NewsContainer(
                  newsimagepath: "assets/images/News/Blaue_Tonne_news.jpg",
                  text: "Papierabfuhr erfolgt später",
                ),
                verticalMediumSpacing,
                const NewsContainer(
                    text: "Der Verkehr rollt wieder auf der Loekampstraße",
                    newsimagepath: "assets/images/News/NewsLoekampstr.jpg"),
                verticalMediumSpacing,
                const NewsContainer(
                    text: "Der Herbst ist da: Die Laubabfuhr startet",
                    newsimagepath: "assets/images/News/Herbst.jpg"),
                verticalMediumSpacing,
                const NewsContainer(
                    text: "Der Herbst ist da: Die Laubabfuhr startet",
                    newsimagepath: "assets/images/News/Herbst.jpg")
              ],
            ),
          ),
        ));
  }
}
