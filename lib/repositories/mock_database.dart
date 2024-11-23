import 'dart:async';

import 'package:mam_projekt_v1/models/user.dart';
import 'package:mam_projekt_v1/repositories/database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<Map<String, String>> trashList = <Map<String, String>>[
    {
      "Abfallart": "Abbeizmittel",
      "Entsorgung":
          "unentleert gehört es in den Sondermüll. Restlos entleerte Behälter gehören in die gelbe Tonne. ",
    }
  ];
  // Liste mit Usern
  final List<User> _users = [
    User(userName: " Dirk", password: "1234"),
  ];
  User? _currentUser;
  @override
  void addNewTrashInformation(
    String abfallart,
    String entsorgung,
  ) {
    trashList.add({
      'Abfallart': abfallart,
      'Entsorgung': entsorgung,
    });
  }

  Future<List<Map<String, String>>> getTrashList() async {
    await Future.delayed(Duration(seconds: 3));
    return trashList;
  }

  @override
  void getAllTrashInformation() {
    // TODO: implement getAllTrashInformation
  }
  @override
  void deleteTrashInformation() {
    // TODO: implement deleteTrashInformation
  }

  @override
  Future<List<User>> getAllUsers() {
    return Future.value(_users);
  }

  @override
  Future<bool> addUser(String newUserName, String newPassword) {
    // Überprüfen, ob es den User schon gibt.
    for (User user in _users) {
      if (newUserName == user.userName) {
        return Future.value(false);
      }
    }
    User newUser = User(userName: newUserName, password: newPassword);
    _users.add(newUser);

    return Future.delayed(const Duration(seconds: 1), () => true);
  }

  @override
  Future<void> editUser(User user) {
    // TODO: implement editUser
    throw UnimplementedError();
  }

  @override
  Future<User?> getCurrentUser() {
    return Future.delayed(
      const Duration(milliseconds: 1234),
      () => _currentUser,
    );
  }

  @override
  Future<void> addNews() {
    // TODO: implement addNews
    throw UnimplementedError();
  }

  @override
  Future<void> editNews() {
    // TODO: implement editNews
    throw UnimplementedError();
  }

  @override
  Future<bool> login({required String userName, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> getNews() async {
    // TODO: implement getNews
  }
}
