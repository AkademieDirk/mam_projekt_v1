import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/features/Login_Registration/login_screen.dart';
import 'package:mam_projekt_v1/features/Login_Registration/registration_screen.dart';

class ContentSwitcher extends StatelessWidget {
  const ContentSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                backgroundGradientStartColor,
                backgroundGradientEndColor
              ]),
        ),
      ),
      GridView.count(
          crossAxisCount: 1,
          children: List.generate(5, (index) {
            return Container(
                decoration: const BoxDecoration(color: Colors.red));
          }))
    ]));
  }
}
