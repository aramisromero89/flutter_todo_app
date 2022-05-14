import 'package:beamer/beamer.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/view/pages/home_page.dart';
import 'package:flutter_todo_app/view/pages/signin_page.dart';
import 'package:flutter_todo_app/view/pages/signup_page.dart';
import 'package:get_it/get_it.dart';

final routerDelegate = BeamerRouterDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [HomeLocation(), SignInLocation(), SignUpLocation()],
    ),
    guards: [
      BeamGuard(
        check: (context, location) {
          final provider = GetIt.I<AuthProvider>();
          return provider.session != null;
        },
        guardNonMatching: true,
        pathBlueprints: [
          SignInLocation.path,
          SignUpLocation.path,
        ],
      )
    ]);
