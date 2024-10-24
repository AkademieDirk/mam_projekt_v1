import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    required this.title,
    required this.canColorImagePath,
  });
  final String title;
  final String canColorImagePath;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: Colors.yellow)),

      elevation: 12,
      backgroundColor: appbarcolor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      centerTitle: true,
      actions: [
        SizedBox(
          height: 50,
          width: 40,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image(image: AssetImage(canColorImagePath)),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
      //flexibleSpace:
      //    Image.asset('assets/images/TrashCanColor/gelbe_Tonne.png'),
    );
  }

  @override
  //! hier wird die Klasse um eiune Größe erweitert um diese universal einsetzen zu können
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
