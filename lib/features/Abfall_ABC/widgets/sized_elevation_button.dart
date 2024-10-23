import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/features/Change_Screen/content_switcher.dart';

class SizedElevationButton extends StatelessWidget {
  SizedElevationButton({
    super.key,
    required this.text,
    required this.screenname,
  });
  var screenname;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 200,
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screenname));
          },
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          )),
    );
  }
}
