import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/list_view_buildermanual.dart';
import 'package:mam_projekt_v1/repositories/mock_database.dart';

class AddNewTrashScreen extends StatefulWidget {
  AddNewTrashScreen({super.key});
  final MockDatabase mockdatabase = MockDatabase();
  @override
  State<AddNewTrashScreen> createState() => _AddNewTrashScreenState();
}

class _AddNewTrashScreenState extends State<AddNewTrashScreen> {
  final MockDatabase mockdatabase = MockDatabase();

  final _formKey = GlobalKey<FormState>();
  TextEditingController abfallart = TextEditingController();
  TextEditingController entsorgung = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(" neue Informationen hizufügen")),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      style: Theme.of(context).textTheme.bodySmall,
                      controller: abfallart,
                      decoration: const InputDecoration(
                          labelText: " Titel", border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Bitte einen Titel eingeben";
                        }
                        return null;
                      },
                    ),
                  ),
                  TextFormField(
                    controller: entsorgung,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return " Bitte eine Beschreibung eingeben";
                      }
                      return null;
                    },
                  ),
                ],
              )),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  //! Hier ist wichtig die Mockdatabase aufzurufen. Über diese ist die methode dann ansprechbar
                  setState(() {
                    mockdatabase.addNewTrashInformation(
                        abfallart.text, entsorgung.text);
                  });
                }
              },
              child: Text(
                " Daten in die Liste einfügen",
                style: Theme.of(context).textTheme.bodyMedium,
              )),

// Hier wird zum Test die Liste angezeigt um dei Funktionalität zu prüfen
          const SizedBox(
            height: 20,
          ),

          // ListViewBuildermanual(mockdatabase: mockdatabase),
        ],
      ),
    );
  }

  @override
  void dispose() {
    abfallart.dispose();
    entsorgung.dispose();

    super.dispose();
  }
}
