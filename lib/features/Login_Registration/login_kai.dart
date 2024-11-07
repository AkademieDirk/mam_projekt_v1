import "dart:developer";

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

const double standardPadding = 32;
const verticalSpacing = SizedBox(height: standardPadding);
const smallVerticalSpacing = SizedBox(height: standardPadding / 2);

// Login-Information
const String userName = "Batch 7";
const String userPassword = "12345";

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // hier wird der Kay gesetzt
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // Controller für Paswortvegleich

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  bool passwordVisible = false;
  bool passwordmatch = false;

  void loginIfSuccessfull() {
    if (usernameController.text == userName &&
        passwordController.text == userPassword) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Login successfull")));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Go away!")));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: standardPadding, right: standardPadding),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(usernameController.text),
                  const SizedBox(height: standardPadding),
                  TextFormField(
                    validator: (value) {
                      if (value != null && value.length < 5) {
                        return " Name zu kurz";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  smallVerticalSpacing,
                  TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "E-Mail")),
                  smallVerticalSpacing,
                  TextFormField(
                    controller: passwordController,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  verticalSpacing,
                  TextFormField(
                      controller: confirmpasswordController,
                      decoration: const InputDecoration(
                          hintText: "confirm Password",
                          border: OutlineInputBorder())),
                  Builder(builder: (context) {
                    return OutlinedButton(
                      onPressed: () {
                        if (passwordController.text !=
                            confirmpasswordController.text) {
                          passwordmatch = false;
                          _formkey.currentState!.validate();
                        }

                        if (_formkey.currentState!.validate()) {
                          log("Alles richtig gemacht");
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Alle Felder korrekt ausgefüllt!"),
                          )); // SnackBar
                        }
                      },
                      child: const Text("Einloggen"),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//Ausblenden;


















