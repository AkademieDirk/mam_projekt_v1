// import 'package:flutter/material.dart';
// import 'package:mam_projekt_v1/repositories/mock_database.dart';

// class ListViewBuildermanual extends StatelessWidget {
//   const ListViewBuildermanual({
//     super.key,
//     required this.mockdatabase,
//   });

//   final MockDatabase mockdatabase;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Scaffold(
//         body: ListView.builder(
//             itemCount: mockdatabase.getTrashList().length,
//             itemBuilder: (context, index) {
//               var trashItem = mockdatabase.getTrashList()[index];
//               return Card(
//                   margin: const EdgeInsets.symmetric(vertical: 8),
//                   // Hier wird mit den Fragezeichen geprüft ob der Tile leer ist. falls ja dann wird ein leerer Sting gezeigt
//                   child: ListTile(
//                       title: Text(trashItem["Abfallart"] ?? ""),
//                       subtitle: Column(children: [
//                         Text("Entsorgung : ${trashItem["Entsorgung"]}"),
//                       ])));
//             }),
//       ),
//     );
//   }
// }
