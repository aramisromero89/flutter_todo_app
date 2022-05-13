import 'package:flutter/material.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/view/signin_view.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class AuthGuardView extends StatelessWidget {
  final _provider = GetIt.I<AuthProvider>();
  final Widget child;
  AuthGuardView({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider,
      child: content(),
    );
  }

  Widget content() {
    return Consumer<AuthProvider>(
      builder: (context, value, child) {
        if (value.session == null) {
          return SignInView();
        } else {
          return this.child;
        }
      },
    );
  }
}
