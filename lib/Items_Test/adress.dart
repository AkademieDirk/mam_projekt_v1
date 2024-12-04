import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(const MeineApp());

class MeineApp extends StatelessWidget {
  const MeineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdressSucheBildschirm(),
    );
  }
}

class AdressSucheBildschirm extends StatefulWidget {
  const AdressSucheBildschirm({super.key});

  @override
  _AdressSucheBildschirmState createState() => _AdressSucheBildschirmState();
}

class _AdressSucheBildschirmState extends State<AdressSucheBildschirm> {
  final TextEditingController _eingabeController = TextEditingController();
  List<String> _vorschlaege = [];
  Timer? _wartezeit;

  @override
  void dispose() {
    _eingabeController.dispose();
    _wartezeit?.cancel();
    super.dispose();
  }

  Future<void> _ladeVorschlaege(String eingabe) async {
    if (eingabe.isEmpty) {
      setState(() {
        _vorschlaege = [];
      });
      return;
    }

    final url =
        'https://nominatim.openstreetmap.org/search?q=$eingabe&format=json&addressdetails=1&limit=3';
    try {
      final antwort = await http.get(Uri.parse(url));
      if (antwort.statusCode == 200) {
        final daten = jsonDecode(antwort.body) as List;
        setState(() {
          _vorschlaege =
              daten.map((item) => item['display_name'] as String).toList();
        });
      } else {
        throw Exception('Fehler beim Laden der Vorschläge');
      }
    } catch (e) {
      //print('Fehler beim Laden der Vorschläge: $e');
    }
  }

  void _beiEingabeGeaendert(String wert) {
    if (_wartezeit?.isActive ?? false) _wartezeit?.cancel();
    _wartezeit = Timer(const Duration(milliseconds: 500), () {
      _ladeVorschlaege(wert);
    });
  }

  void _adresseAuswaehlen(String adresse) {
    setState(() {
      _eingabeController.text = adresse; // Die Adresse ins Textfeld schreiben
      _vorschlaege = []; // Vorschläge leeren
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Straßensuche')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _eingabeController,
              onChanged: _beiEingabeGeaendert,
              decoration: const InputDecoration(
                labelText: 'Straße eingeben',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _vorschlaege.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_vorschlaege[index]),
                    onTap: () {
                      _adresseAuswaehlen(_vorschlaege[index]);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
