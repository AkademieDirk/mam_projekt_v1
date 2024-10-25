import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';

class TrashAbcScreen extends StatelessWidget {
  const TrashAbcScreen({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(
          title: "Abfall ABC",
          canColorImagePath:
              "assets/images/TrashCanColor/Fragezeichen_transparent.png",
          textcolor: Colors.black),
      body: Container(
        decoration: background,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: ListView.separated(
            itemCount: trashdata.length,
            itemBuilder: (context, index) {
              Color backgroundColor =
                  index % 2 == 0 ? listtilestraight : listtileodd;
              return Container(
                color: backgroundColor,
                child: ListTile(
                  selected: false,
                  title: Center(
                      child: Text(trashdata[index].title1,
                          style: Theme.of(context).textTheme.bodyMedium)),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: dividercolor,
                thickness: 0.5,
                // endIndent: 80,
                // indent: 80,
              );
            },
          ),
        ),
      ),
    );
  }
}
