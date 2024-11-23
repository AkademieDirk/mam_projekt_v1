import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/config/colors/colors.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/screens/add_new_trash_screen.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    required this.title,
    required this.canColorImagePath,
    required this.textcolor,
  });
  final String title;
  final String canColorImagePath;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: textcolor)),

      backgroundColor: appbarcolor,

      centerTitle: true,
      actions: [
        IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddNewTrashScreen()));
            }),
        SizedBox(
          width: 50,
          child: Image(
            image: AssetImage(canColorImagePath),
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
  //! hier wird die Klasse um eine Größe erweitert um diese universal einsetzen zu können
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
