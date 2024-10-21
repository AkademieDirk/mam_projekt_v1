import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: Column(children: [
        Text(trashdata[1].title1),
      ]),
    ));
  }
}
