import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/view/components/app_bar.dart';
import 'package:flutter_todo_app/view/components/signin_view.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // DropdownButton<String>(
          //   value: LocaleSettings.currentLocale.name,
          //   icon: const Icon(Icons.translate),
          //   items: LocaleSettings.supportedLocales
          //       .map(
          //         (e) => DropdownMenuItem<String>(
          //           value: e.languageCode,
          //           child: Text(e.languageCode),
          //         ),
          //       )
          //       .toList(),
          //   onChanged: (langCode) {
          //     print(langCode);
          //     LocaleSettings.setLocaleRaw(langCode!);
          //     Navigator.pushReplacementNamed(context, "/");
          //   },
          // ),
        ],
      ),
      body: ChangeNotifierProvider.value(
        value: GetIt.I<AuthProvider>(),
        child: Consumer<AuthProvider>(
          builder: (context, provider, child) => provider.session == null ? const SignInView() : const Text("home"),
        ),
      ),
    );
  }
}
