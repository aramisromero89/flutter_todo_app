import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/model/entity/session.dart';
import 'package:flutter_todo_app/model/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  String sessionKey = "app_session";
  final _repository = GetIt.I<AuthRepository>();

  Session? _session;

  Session? get session => _session;

  void _setSession(Session? s) {
    _session = s;
    if (s != null) {
      GetIt.I<SharedPreferences>().setString(sessionKey, s.toJsonString());
    } else {
      GetIt.I<SharedPreferences>().remove(sessionKey);
    }
    notifyListeners();
  }

  void loadSessionFromSharedPreferences() {
    final sessionString = GetIt.I<SharedPreferences>().getString(sessionKey);
    if (sessionString != null) {
      _setSession(Session.fromJsonString(sessionString.toString()));
    }
  }

  Future<void> signIn(String username, String password) async {
    final res = await _repository.signIn(username, password);
    _setSession(res);
  }

  Future<void> signUp(String username, String password) async {
    final res = await _repository.signUp(username, password);
    _setSession(res);
  }

  Future<void> signOut() async {
    final res = await _repository.signOut();
    if (res) {
      _setSession(null);
    }
  }
}
