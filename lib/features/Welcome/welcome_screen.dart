import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
      Positioned(
        left: 60,
        top: 100,
        height: 300,
        width: 300,
        child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/logo-transparent.png"),
                    opacity: 0.8)
                //
                //
                )),
      ),
      Positioned(
        top: 400,
        left: 95,
        child: Text(
          "Herzlich Willkommen",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      Positioned(
          width: 200,
          height: 30,
          top: 500,
          left: 110,
          child:
              //! später auslagern mit übergabe Ziel oder Mathode
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "weiter als Gast",
                    style: Theme.of(context).textTheme.bodySmall,
                  ))),
      Positioned(
          width: 200,
          height: 30,
          top: 550,
          left: 110,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login ",
                style: Theme.of(context).textTheme.bodySmall,
              ))),
      Positioned(
          width: 200,
          height: 30,
          top: 600,
          left: 110,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Registrierung ",
                style: Theme.of(context).textTheme.bodySmall,
              ))),

      //! hier ist vorbereitet für Icons Login mit
      const Row(
        children: [],
      )
    ]));
  }
}
