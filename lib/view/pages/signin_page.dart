import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/view/components/signin_view.dart';

class SignInLocation extends BeamLocation<BeamState> {
  static String path = '/signin';
  @override
  List<BeamPage> pagesBuilder(BuildContext context, BeamState state) => [
        BeamPage(
          name: t.pages.home,
          child: const SignInView(),
        ),
      ];

  @override
  List<String> get pathBlueprints => [path];
}
