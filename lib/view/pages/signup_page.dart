import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/view/components/signup_view.dart';

class SignUpLocation extends BeamLocation<BeamState> {
  @override
  List<BeamPage> pagesBuilder(BuildContext context, BeamState state) => [
        BeamPage(
          name: t.pages.home,
          child: const SignUpView(),
        ),
      ];

  @override
  List<String> get pathBlueprints => ['/signup'];
}
