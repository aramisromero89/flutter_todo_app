import 'package:flutter/material.dart';
import 'package:flutter_todo_app/view/pages/home_page.dart';
import 'package:flutter_todo_app/view/pages/signup_page.dart';

const home = "/";
const signup = "/signup";
Map<String, Widget Function(BuildContext)> routes = {
  home: (context) => const HomePage(),
  signup: (context) => const SignUpPage(),
};
