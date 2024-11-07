import 'package:flutter/material.dart';
import 'package:mam_projekt_v1/repositories/mock_database.dart';

class AddNewTrashScreen extends StatefulWidget {
  const AddNewTrashScreen({super.key});

  @override
  State<AddNewTrashScreen> createState() => _AddNewTrashScreenState();
}

class _AddNewTrashScreenState extends State<AddNewTrashScreen> {
  final MockDatabase mockdatabase = MockDatabase();
  TextEditingController title1 = TextEditingController();
  TextEditingController trashDescription = TextEditingController();
  TextEditingController title2 = TextEditingController();
  TextEditingController desposalDescription = TextEditingController();
  TextEditingController danger = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void dispose() {
    danger.dispose();
    title1.dispose();
    title2.dispose();
    desposalDescription.dispose();
    trashDescription.dispose();

    super.dispose();
  }
}
