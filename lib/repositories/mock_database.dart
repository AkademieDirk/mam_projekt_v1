// ignore_for_file: prefer_const_constructors, unused_element

import 'dart:async';

import 'package:mam_projekt_v1/models/user.dart';
import 'package:mam_projekt_v1/repositories/database_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockDatabase implements DatabaseRepository {
  List<Map<String, String>> trashList = <Map<String, String>>[
    {
      "Abfallart": "Abbeizmittel",
      "Entsorgung":
          "unentleert gehört es in den Sondermüll. Restlos entleerte Behälter gehören in die gelbe Tonne. ",
    }
  ];
  Future<List<Map<String, String>>> getTrashList() async {
    await Future.delayed(const Duration(seconds: 3));
    return trashList;
  }

  @override
  void addNewTrashInformation(String abfallart, String entsorgung) {
    @override
    Future<void> addNews() {
      throw UnimplementedError();
    }

    @override
    Future<bool> addUser(String newUserName, String newPassword) {
      throw UnimplementedError();
    }

    @override
    void deleteTrashInformation() {}

    @override
    Future<void> editNews() {
      throw UnimplementedError();
    }

    @override
    Future<void> editUser(User user) {
      throw UnimplementedError();
    }

    @override
    void getAllTrashInformation() {}

    @override
    Future<List<User>> getAllUsers() {
      throw UnimplementedError();
    }

    @override
    Future<User?> getCurrentUser() {
      throw UnimplementedError();
    }

    @override
    Future<void> getNews() {
      throw UnimplementedError();
    }

    @override
    Future<bool> login({required String userName, required String password}) {
      throw UnimplementedError();
    }

    @override
    Future<void> logout() {
      throw UnimplementedError();
    }
  }

// Liste mit Usern
  final List<User> _users = [
    User(userName: " Dirk", password: "1234"),
  ];
  User? _currentUser;
// @override
// Future<void> addNewTrashInformation(
//   String abfallart,
//   String entsorgung,
//   dynamic trashList,
// ) async {
//   await Future.delayed(Duration(seconds: 2));
//   trashList.add({
//     'Abfallart': abfallart,
//     'Entsorgung': entsorgung,
//   });
// }

  @override
  void deleteTrashInformation() {}

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
    throw UnimplementedError();
  }

  @override
  Future<User?> getCurrentUser() {
    return Future.delayed(
      const Duration(seconds: 1),
      () => _currentUser,
    );
  }

  @override
  Future<void> addNews() {
    throw UnimplementedError();
  }

  @override
  Future<void> editNews() {
    throw UnimplementedError();
  }

  @override
  Future<bool> login({required String userName, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  @override
  Future<void> getNews() async {}

  Future<void> _adresseLaden() async {
    //final prefs = await SharedPreferences.getInstance();
    //final gespeicherteAdresse = prefs.getString('ausgewaehlte_adresse');
    //print('Gespeicherte Adresse: $gespeicherteAdresse');
  }

  Future<void> _adresseSpeichern(String adresse) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('ausgewaehlte_adresse', adresse);
  }

  @override
  Future<List<List>> getAllTrashInformation() {
    throw UnimplementedError();
  }
}
