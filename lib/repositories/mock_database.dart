import 'package:mam_projekt_v1/models/user.dart';
import 'package:mam_projekt_v1/repositories/database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<Map<String, String>> trashList = [];

  @override
  void addNewTrashInformation(
    String title1,
    String trashDescription,
    String title2,
    String desposalDescription,
    String danger,
  ) {
    trashList.add({
      'title1': title1,
      'trashDescription': trashDescription,
      'title2': title2,
      'desposalDescription': desposalDescription,
      'danger': danger,
    });
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

// @override
//   Future<bool> login({
//     required String userName,
//     required String password,
//   }) {
//     for (User currentUser in _users) {
//       if (currentUser.userName == userName) {
//         if (currentUser.password == password) {
//           _currentUser = currentUser;

//           return Future.value(true);
//         } else {
//           return Future.value(false);
//         }
//       }
//     }

//     return Future.value(false);
//   }

