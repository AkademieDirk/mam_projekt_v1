import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/sizes/sizes.dart';

ThemeData mamTheme = ThemeData(
    fontFamily: "Urbanist",
    textTheme: const TextTheme(
        bodySmall: TextStyle(fontSize: smallTextSize),
        bodyMedium: TextStyle(fontSize: normaTextSize),
        bodyLarge: TextStyle(fontSize: bigTextSize),
        headlineMedium:
            TextStyle(fontSize: mediumTextSize, fontWeight: FontWeight.bold),
        headlineLarge:
            TextStyle(fontSize: bigTextSize, fontWeight: FontWeight.w500)));

Icon closebutton = const Icon(Icons.close_rounded);
const verticalSpacing = SizedBox(
  height: 20,
);
//  Einstellungen für den Screenhintergrund zum rauskopieren

const BoxDecoration background = BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [backgroundGradientStartColor, backgroundGradientEndColor]),
);

final BoxDecoration borderBasics = BoxDecoration(
  color: Colors.white60,
  border: Border.all(color: buttonBorder, width: 2.0),
  borderRadius: const BorderRadius.all(
    Radius.circular(10),
  ),
);
