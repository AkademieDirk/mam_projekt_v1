import 'package:mam_projekt_v1/features/Abfall_ABC/repository/database_repository.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/repository/information_card_data.dart';
import 'package:mam_projekt_v1/features/Abfall_ABC/widgets/classes/information_card_class.dart';

class MockDatabase implements DatabaseRepository {
  @override
  void addNewTrashInformation(
    String title1,
    String trashDescription,
    String title2,
    String desposalDescription,
    String danger,
  ) {
    InformationCardClass newtrashdata = InformationCardClass(
        title1: title1,
        title2: title2,
        desposalDescription: desposalDescription,
        trashDescription: trashDescription,
        danger: danger);
    trashdata.add(newtrashdata);
  }
}
