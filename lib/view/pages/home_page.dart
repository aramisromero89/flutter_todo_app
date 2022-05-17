import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/view/components/signin_view.dart';
import 'package:flutter_todo_app/view/components/task_list_view.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GetIt.I<AuthProvider>(),
      child: Consumer<AuthProvider>(
          builder: (context, provider, child) => Scaffold(
                drawer: provider.session == null ? null : drawer(context),
                appBar: AppBar(
                  title: const Text("TODO"),
                ),
                body: ChangeNotifierProvider.value(
                  value: GetIt.I<AuthProvider>(),
                  child: Consumer<AuthProvider>(
                    builder: (context, provider, child) => provider.session == null ? const SignInView() : const TaskListView(),
                  ),
                ),
              )),
    );
  }

  Drawer drawer(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/todo.png'), fit: BoxFit.cover),
                color: Colors.blue,
              ),
              child: Container(),
            ),
            Row(
              children: [const Icon(Icons.account_box), Text(GetIt.I<AuthProvider>().session!.userName)],
            ),
            const Padding(padding: EdgeInsets.all(15)),
            InkWell(
                child: Row(
                  children: [const Icon(Icons.logout), Text(t.auth.signout)],
                ),
                onTap: () {
                  GetIt.I<AuthProvider>().signOut();
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                }),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                ...LocaleSettings.supportedLocales.map(
                  (locale) {
                    return TextButton(
                      onPressed: () {
                        ValidationBuilder.setLocale(locale.languageCode);
                        LocaleSettings.setLocaleRaw(locale.languageCode);
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      },
                      child: Text(locale.languageCode,
                          style: TextStyle(
                              color: LocaleSettings.currentLocale.flutterLocale.languageCode == locale.languageCode
                                  ? Theme.of(context).primaryColor
                                  : Colors.black)),
                    );
                  },
                ).toList(),
              ]),
            ))
          ],
        ),
      ),
    );
  }
}
