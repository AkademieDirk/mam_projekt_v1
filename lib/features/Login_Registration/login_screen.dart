import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/config/sizes/sizes.dart';
import 'package:mam_projekt_v1/config/themes/themes.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/container_settings.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/my_own_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: background,
        ),
        SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Expanded(child: SizedBox()),
                  Text("Login",
                      style: Theme.of(context).textTheme.headlineMedium),
                  const Expanded(child: SizedBox()),
                ],
              ),
              verticalSpacing,
              const Center(
                child: MyOwnContainer(
                  text: "Enter your EMail",
                ),
              ),
              verticalSpacing,
              const MyOwnContainer(text: "Enter your Password"),
            ],
          ),
        )
      ],
    ));
  }
}
