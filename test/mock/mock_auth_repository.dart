import 'package:flutter_todo_app/model/entity/session.dart';
import 'package:flutter_todo_app/model/repository/auth_repository.dart';

class MockAuthRepository extends AuthRepository {
  @override
  Future<Session?> signIn(String username, String password) async {
    return Session(userId: "a", userName: username, token: "a");
  }

  @override
  Future<bool> signOut() async {
    return true;
  }

  @override
  Future<Session?> signUp(String username, String password) async {
    return Session(userId: "a", userName: username, token: "a");
  }
}
