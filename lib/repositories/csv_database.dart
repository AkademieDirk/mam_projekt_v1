import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:mam_projekt_v1/models/user.dart';
import 'package:mam_projekt_v1/repositories/database_repository.dart';

class CsvDatabase extends DatabaseRepository {
  @override
  void addNewTrashInformation(String abfallart, String entsorgung) {}

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
  Future<List<List<dynamic>>> getAllTrashInformation() async {
    try {
      final rawData =
          await rootBundle.loadString("assets/sheets/abfallABCv1.csv");
      List<List<dynamic>> listData =
          const CsvToListConverter().convert(rawData, fieldDelimiter: ";");

      // Nur Zeilen mit mindestens 5 Spalten speichern
      return listData;
    } catch (e) {
      return [];
    }
  }

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
