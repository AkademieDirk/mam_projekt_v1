import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/sizes/sizes.dart';

ThemeData mamTheme = ThemeData(
    fontFamily: "Urbanist",
    textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: normaTextSize),
        headlineMedium: TextStyle(fontSize: bigTextSize),
        bodySmall: TextStyle(fontSize: smallTextSize)));

Icon closebutton = const Icon(Icons.close_rounded);
const verticalSpacing = SizedBox(
  height: 20,
);
//  Einstellungen für den Screenhintergrund zum rauskopieren

//  decoration: const BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//           backgroundGradientStartColor,
//           backgroundGradientEndColor