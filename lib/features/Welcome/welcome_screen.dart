import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Change_Screen/content_switcher.dart';
import 'package:mam_projekt_v1/features/Login_Registration/login_screen.dart';
import 'package:mam_projekt_v1/features/Login_Registration/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                backgroundGradientStartColor,
                backgroundGradientEndColor
              ]),
        ),
        child: SafeArea(
            child: Column(children: [
          const SizedBox(
            height: 300,
            child: Image(
                image: AssetImage("assets/icons/Logos/logo-transparent.png")),
          ),
          verticalSpacing,
          Text(
            "Herzlich Willkommen",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          verticalBigSpacing,
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ContentSwitcher()));
              },
              child: Text(
                "weiter als Gast",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          verticalSpacing,
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Text(
                "Login ",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          verticalSpacing,
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegistrationScreen()));
              },
              child: Text(
                "Registrierung ",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
        ]
                //   //! hier ist vorbereitet für Icons Login mit
                //   const Row(
                //     children: [],
                //   )
                // ],]),
                )),
      ),
    );
  }
}
