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

  List<Map<String, String>> getTrashList() {
    return trashList;
  }

//! Hier ist die User List aber ich hätte diese gerne an einer anderen Stelle in den Modells bei User. ist das möglich?
  final List<User> _users = [
    User(userName: "Dirk Kraft", password: "12345"),
  ];
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
  Future<bool> addUser(String userName, String password) {
    // TODO: implement addUser
    throw UnimplementedError();
  }

  @override
  Future<void> editUser(User user) {
    // TODO: implement editUser
    throw UnimplementedError();
  }

  @override
  Future<User?> getCurrentUser() {
    // TODO: implement getCurrentUser
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
  Future<void> addNews() async {
    // TODO: implement addNews
  }

  @override
  Future<void> editNews() async {
    // TODO: implement editNews
  }

  @override
  Future<void> getNews() async {
    // TODO: implement getNews
  }
}

@override
Future<bool> addUser(String userName, String password) {
  // TODO: implement addUser
  throw UnimplementedError();
}

@override
Future<void> editUser(User user) {
  // TODO: implement editUser
  throw UnimplementedError();
}

@override
Future<bool> login({required String userName, required String password}) {
  // TODO: implement login
  throw UnimplementedError();
}

@override
Future<User?> getCurrentUser() {
  // TODO: implement getCurrentUser
  throw UnimplementedError();
}

@override
Future<void> logout() {
  // TODO: implement logout
  throw UnimplementedError();
}

@override
Future<void> addNews() {
  // TODO: implement addNews
  throw UnimplementedError();
}

@override
void deleteTrashInformation() {
  // TODO: implement deleteTrashInformation
}

@override
Future<void> editNews() {
  // TODO: implement editNews
  throw UnimplementedError();
}

@override
void getAllTrashInformation() {
  // TODO: implement getAllTrashInformation
}

@override
Future<List<User>> getAllUsers() {
  // TODO: implement getAllUsers
  throw UnimplementedError();
}

@override
Future<void> getNews() {
  // TODO: implement getNews
  throw UnimplementedError();
}
