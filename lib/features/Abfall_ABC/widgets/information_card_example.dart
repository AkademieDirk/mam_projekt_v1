import 'package:flutter/material.dart';

class InformationCard extends StatelessWidget {
  const InformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Card(
      child: Column(children: [
        Text("Test"),
      ]),
    ));
  }
}
