import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: background,
          child: const Text("Test")),
    );
  }
}
