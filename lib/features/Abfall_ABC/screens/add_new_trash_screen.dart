import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/repositories/mock_database.dart';

class AddNewTrashScreen extends StatefulWidget {
  const AddNewTrashScreen({super.key});

  @override
  State<AddNewTrashScreen> createState() => _AddNewTrashScreenState();
}

class _AddNewTrashScreenState extends State<AddNewTrashScreen> {
  final MockDatabase mockdatabase = MockDatabase();

  final _formKey = GlobalKey<FormState>();
  TextEditingController title1 = TextEditingController();
  TextEditingController trashDescription = TextEditingController();
  TextEditingController title2 = TextEditingController();
  TextEditingController desposalDescription = TextEditingController();
  TextEditingController danger = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(" neue Informationen hizufügen")),
        body: Column(
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: title1,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Bitte einen Titel eingeben";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: trashDescription,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return " Bitte eine Beschreibung eingeben";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: title2,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Bitte Titel 2 eingeben";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: danger,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "BITTE GEFAHRENSTUFE EINGEBEN";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: desposalDescription,
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return " Bitte Abgabeort eingeben";
                        }
                        return null;
                      },
                    )
                  ],
                ))
          ],
        ));
  }

  @override
  void dispose() {
    danger.dispose();
    title1.dispose();
    title2.dispose();
    desposalDescription.dispose();
    trashDescription.dispose();

    super.dispose();
  }
}
