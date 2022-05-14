import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_todo_app/model/api/api_client.dart';
import 'package:flutter_todo_app/model/repository/auth_repository.dart';
import 'package:flutter_todo_app/model/repository/task_repository.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter_todo_app/view/pages/router.dart';
import 'package:get_it/get_it.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // add this
  LocaleSettings.useDeviceLocale(); // and this
  await dotenv.load(fileName: ".env");
  setupDependencies();

  runApp(TranslationProvider(child: MyApp()));
}

void setupDependencies() {
  GetIt.I.registerSingleton<GraphqlApiClient>(GraphqlApiClient());
  GetIt.I.registerSingleton<AuthRepository>(AuthRepository());
  GetIt.I.registerSingleton<TaskRepository>(TaskRepository());
  GetIt.I.registerSingleton<AuthProvider>(AuthProvider());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = router();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TODO',
      locale: TranslationProvider.of(context).flutterLocale, // use provider
      supportedLocales: LocaleSettings.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: BeamerRouteInformationParser(),
      routerDelegate: routerDelegate,
    );
  }
}
