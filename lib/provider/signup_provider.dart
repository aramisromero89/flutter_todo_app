import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'auth_provider.dart';

class SignUpProvider extends ChangeNotifier {
  final _authProvider = GetIt.I<AuthProvider>();
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();
  bool _submitting = false;
  bool get submitting => _submitting;
  bool _hidePassword = true;
  bool get hidePassword => _hidePassword;
  bool _hideConfirmPassword = true;
  bool get hideConfirmPassword => _hideConfirmPassword;

  void togglePasswordVisibility() {
    _hidePassword = !_hidePassword;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _hideConfirmPassword = !_hideConfirmPassword;
    notifyListeners();
  }

  Future<void> submit() async {
    if (formKey.currentState!.validate()) {
      _submitting = true;
      notifyListeners();
      try {
        await _authProvider.signUp(usernameController.text, passwordController.text);
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
