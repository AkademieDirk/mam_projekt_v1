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
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpacing,
                  verticalSpacing,
                  GestureDetector(
                    onTap: () {
                      alertDialogNews(context);
                    },
                    child: const NewsContainer(
                      newsimagepath: "assets/images/News/Blaue_Tonne_news.jpg",
                      text: "Papierabfuhr erfolgt später",
                    ),
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
          )),
    );
  }
}

//! Hier wird gerade getestet mit dem Alert Dialog. Dazu muss ich noch ein  News Repository anlegen
Future<dynamic> alertDialogNews(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Titel"),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Überschrift"),
            Text("Nachricht"),
            Image(image: AssetImage("assets/images/News/news.jpg"))
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Schließt den Dialog
            },
            child: const Text("ActionsText"),
          ),
        ],
      );
    },
  );
}
