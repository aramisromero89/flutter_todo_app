import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/view/components/signin_view.dart';
import 'package:flutter_todo_app/view/components/task_list_view.dart';
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
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/todo.png'), fit: BoxFit.cover),
              color: Colors.blue,
            ),
            child: Container(),
          ),
          ListTile(
            title: Row(
              children: [const Icon(Icons.account_box), Text(GetIt.I<AuthProvider>().session!.userName)],
            ),
          ),
          ListTile(title: Text(t.general.language)),
          ...LocaleSettings.supportedLocales.map(
            (locale) {
              return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(locale.languageCode,
                        style: TextStyle(
                            color: LocaleSettings.currentLocale.flutterLocale.languageCode == locale.languageCode
                                ? Theme.of(context).primaryColor
                                : Colors.black)),
                  ),
                  onTap: () {
                    LocaleSettings.setLocaleRaw(locale.languageCode);
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  });
            },
          ).toList(),
          ListTile(
            title: Row(
              children: [const Icon(Icons.logout), Text(t.auth.signout)],
            ),
            onTap: () {
              GetIt.I<AuthProvider>().signOut();
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
      ),
    );
  }
}
