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
                drawer: provider.session == null ? null : drawer(),
                appBar: AppBar(
                  title: const Text("TODO"),
                  actions: [
                    PopupMenuButton(
                      icon: const Icon(Icons.translate),
                      itemBuilder: (_) => LocaleSettings.supportedLocales
                          .map(
                            (e) => PopupMenuItem(child: Text(e.languageCode), value: e.languageCode),
                          )
                          .toList(),
                      onSelected: (String code) {
                        LocaleSettings.setLocaleRaw(code);
                        Navigator.pushReplacementNamed(context, "/");
                      },
                    ),
                  ],
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

  Drawer drawer() {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              // image: ,
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('logout'),
            onTap: () {
              GetIt.I<AuthProvider>().signOut();
            },
          ),
        ],
      ),
    );
  }
}
