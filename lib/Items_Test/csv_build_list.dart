import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

class InterActiveCalendar extends StatefulWidget {
  const InterActiveCalendar({super.key});

  @override
  _InterActiveCalendarState createState() => _InterActiveCalendarState();
}

class _InterActiveCalendarState extends State<InterActiveCalendar> {
  List<List<dynamic>> _data = [];
  ThemeData mamTheme = ThemeData();
  void _loadCSV() async {
    try {
      final rawData = await rootBundle.loadString("assets/sheets/streets.csv");
      List<List<dynamic>> listData =
          const CsvToListConverter().convert(rawData, fieldDelimiter: ";");

      // Nur Zeilen mit mindestens 5 Spalten speichern
      setState(() {
        _data = listData.where((row) => row.length >= 5).toList();
      });
    } catch (e) {
      print('Fehler beim Laden der CSV: $e');
      setState(() {
        _data = [];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadCSV(); // CSV-Daten beim Start laden
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Der Müllkalender"),
      ),
      body: _data.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : InteractiveViewer(
              constrained: false,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Straße')),
                  DataColumn(label: Text('Restabfall')),
                  DataColumn(label: Text('Bio')),
                  DataColumn(label: Text('Wertstoff')),
                  DataColumn(label: Text('Papier')),
                ],
                rows: _data.map((row) {
                  return DataRow(cells: [
                    DataCell(Text(row[0].toString())), // Straße
                    DataCell(Text(row[1].toString())), // Postleitzahl
                    DataCell(Text(row[2].toString())), // Stadt
                    DataCell(Text(row[3].toString())), // Land
                    DataCell(Text(row[4].toString())), // Bemerkung
                  ]);
                }).toList(),
              ),
            ),
    );
  }
}
