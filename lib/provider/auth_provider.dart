import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/model/entity/session.dart';
import 'package:flutter_todo_app/model/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';

class AuthProvider extends ChangeNotifier {
  final _repository = GetIt.I<AuthRepository>();

  Session? _session;

  Session? get session => _session;

  bool _signingUp = false;
  bool get signingUp => _signingUp;

  set signingUp(bool value) {
    if (kDebugMode) {
      print("signin ${value.toString()}");
    }
    _signingUp = value;
    notifyListeners();
  }

  Future<void> signIn(String username, String password) async {
    _session = await _repository.signIn(username, password);
    notifyListeners();
  }

  Future<void> signUp(String username, String password) async {
    _session = await _repository.signUp(username, password);
    _signingUp = false;
    notifyListeners();
  }

  Future<void> signOut() async {
    final res = await _repository.signOut();
    if (res) {
      _session = null;
      notifyListeners();
    }
  }
}
