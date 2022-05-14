import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'auth_provider.dart';

class SignInProvider extends ChangeNotifier {
  final _authProvider = GetIt.I<AuthProvider>();
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _submitting = false;
  bool get submitting => _submitting;
  bool _hidePassword = true;
  bool get hidePassword => _hidePassword;

  void togglePasswordVisibility() {
    _hidePassword = !_hidePassword;
    notifyListeners();
  }

  Future<void> submit() async {
    if (formKey.currentState!.validate()) {
      _submitting = true;
      notifyListeners();
      try {
        await _authProvider.signIn(usernameController.text, passwordController.text);
      } catch (e) {
        _submitting = false;
        notifyListeners();
        rethrow;
      }
    }
    _submitting = false;
    notifyListeners();
  }
}
