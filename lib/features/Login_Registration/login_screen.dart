import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mam_projekt_v1/basic_app_bar.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';

import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/my_own_container.dart';
import 'package:mam_projekt_v1/features/Login_Registration/password_renew.dart';
import 'package:mam_projekt_v1/features/Login_Registration/registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const BasicAppBar(
            title: "Login",
            canColorImagePath: "assets/images/TrashCanColor/Muellabfuhr.jpeg",
            textcolor: Colors.black),
        body: Container(
          width: double.infinity,
          decoration: background,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: MyOwnContainer(
                  text: "  Enter your EMail",
                ),
              ),
              verticalSpacing,
              const MyOwnContainer(text: "  Enter your Password"),
              Row(
                children: [
                  const SizedBox(
                    width: 250,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PasswordRenew()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        backgroundGradientStartColor,
                        backgroundGradientEndColor,
                      ]),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: buttonBorder, width: 1.0)),
                  height: 50,
                  width: 300,
                  child: Text(
                    "Login",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              const SizedBox(height: 150),
              const Text(
                "or Login with",
                textAlign: TextAlign.center,
              ),
              verticalSpacing,
              Row(children: [
                const Expanded(child: SizedBox()),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 50,
                    width: 100,
                    child:
                        const Center(child: FaIcon(FontAwesomeIcons.google))),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 50,
                  width: 100,
                  child: const Icon(
                    Icons.facebook,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 50,
                  width: 100,
                  child: const Icon(
                    Icons.apple,
                    size: 40,
                  ),
                ),
                const Expanded(child: SizedBox())
              ]),
              verticalBigSpacing,
              Row(
                children: [
                  const Expanded(child: SizedBox()),
                  Text("Du hast noch keinen Account? ",
                      style: Theme.of(context).textTheme.bodySmall),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()));
                      },
                      child: Text(
                        " Register Now",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: darkgreenText,
                            ),
                      )),
                  const Expanded(child: SizedBox()),
                ],
              ),
            ],
          ),
        ));
  }
}
