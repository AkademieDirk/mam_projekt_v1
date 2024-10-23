import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Change_Screen/content_switcher.dart';
import 'package:mam_projekt_v1/features/Login_Registration/login_screen.dart';
import 'package:mam_projekt_v1/features/Login_Registration/registration_screen.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/sized_elevation_button.dart';

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
            style: Theme.of(context).textTheme.displaySmall,
          ),
          verticalBigSpacing,
          SizedElevationButton(
            screenname: const ContentSwitcher(),
            text: "weiter als Gast",
          ),
          verticalSpacing,
          SizedElevationButton(text: "Login", screenname: LoginScreen()),
          verticalSpacing,
          SizedElevationButton(
              text: "Registrierung", screenname: RegistrationScreen())
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
