import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/model/entity/session.dart';
import 'package:flutter_todo_app/model/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';

class AuthProvider extends ChangeNotifier {
  final _repository = GetIt.I<AuthRepository>();

  Session? _session;

  Session? get session {
    return _session;
  }

  Future<void> signIn(String username, String password) async {
    _session = await _repository.signIn(username, password);
    notifyListeners();
  }

  Future<void> signUp(String username, String password, String avatar) async {
    _session = await _repository.signUp(username, password, avatar);
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
