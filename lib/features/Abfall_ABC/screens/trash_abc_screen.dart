import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';

class TrashAbcScreen extends StatelessWidget {
  const TrashAbcScreen({super.key, required this.trashdata});
  final List<InformationCardClass> trashdata;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: background,
          child: ListView.separated(
            itemCount: trashdata.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Center(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black54)),
                        height: 50,
                        width: 200,
                        child: Center(
                            child: Text(trashdata[index].title1,
                                style:
                                    Theme.of(context).textTheme.bodyMedium)))),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: dividercolor,
                thickness: 1,
                endIndent: 80,
                indent: 80,
              );
            },
          ),
        ),
      ),
    );
  }
}
