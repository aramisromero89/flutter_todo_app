import 'package:flutter/material.dart';
import 'package:flutter_todo_app/view/components/signup_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SignUpView(),
    );
  }
}
