import 'package:mam_projekt_v1/models/user.dart';

abstract class DatabaseRepository {
  // Hier sind die Methoden für das Trash ABC
  //!--------------------------------------------------------
  void addNewTrashInformation(
    String title1,
    String trashDescription,
    String title2,
    String desposalDescription,
    String danger,
  );
  void getAllTrashInformation();

  void deleteTrashInformation();
//!--------------------------------------------------------
  // Hier alle Methoden zu den Usern

  Future<List<User>> getAllUsers();
  Future<bool> addUser(String userName, String password);
  Future<void> editUser(User user);
  // Hier kann sich der User einloggen
  Future<bool> login({
    required String userName,
    required String password,
  });
  Future<void> logout();
  Future<User?> getCurrentUser();
}
