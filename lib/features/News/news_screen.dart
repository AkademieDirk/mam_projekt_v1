import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';
import 'package:mam_projekt_v1/features/News/news_container.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Aktuelle Meldungen",
          canColorImagePath: "assets/images/News/news.jpg",
          textcolor: Colors.black),
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpacing,
                  verticalSpacing,
                  NewsContainer(
                    newsimagepath: "assets/images/News/Blaue_Tonne_news.jpg",
                    text: "Papierabfuhr erfolgt später",
                  ),
                  verticalMediumSpacing,
                  NewsContainer(
                      text: "Der Verkehr rollt wieder auf der Loekampstraße",
                      newsimagepath: "assets/images/News/NewsLoekampstr.jpg"),
                  verticalMediumSpacing,
                  NewsContainer(
                      text: "Der Herbst ist da: Die Laubabfuhr startet",
                      newsimagepath: "assets/images/News/Herbst.jpg"),
                  verticalMediumSpacing,
                  NewsContainer(
                      text: "Der Herbst ist da: Die Laubabfuhr startet",
                      newsimagepath: "assets/images/News/Herbst.jpg")
                ],
              ),
            ),
          )),
    );
  }
}
