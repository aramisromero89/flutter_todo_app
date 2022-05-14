import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/signin_provider.dart';
import 'package:flutter_todo_app/view/view_utils.dart';
import 'package:form_validator/form_validator.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInProvider(),
      child: _formWidget(),
    );
  }

  Widget _submitButton() {
    return Consumer<SignInProvider>(builder: (context, provider, child) {
      if (provider.submitting) {
        return const CircularProgressIndicator();
      }
      return Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              try {
                await provider.submit();
              } catch (e) {
                ViewUtils.showSnackBar(context, e.toString());
              }
            },
            child: Text(t.auth.signin),
          ),
          Text(t.auth.o),
          TextButton(
            onPressed: provider.submitting
                ? null
                : () {
                    //navigate to signup
                  },
            child: Text(t.auth.signup),
          ),
        ],
      );
    });
  }

  Widget _formWidget() {
    return Consumer<SignInProvider>(
      builder: (context, provider, child) => Center(
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                const Icon(
                  Icons.lock_outline,
                  size: 60,
                ),
                Form(
                  key: provider.formKey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_rounded),
                              hintText: t.auth.username,
                              border: const OutlineInputBorder(),
                            ),
                            validator: ValidationBuilder().required().build(),
                            controller: provider.usernameController,
                          ),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            obscureText: provider.hidePassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key_rounded),
                              suffixIcon: IconButton(
                                icon: Icon(provider.hidePassword ? Icons.visibility_rounded : Icons.visibility_off_rounded),
                                onPressed: () => provider.togglePasswordVisibility(),
                              ),
                              hintText: t.auth.password,
                              border: const OutlineInputBorder(),
                            ),
                            validator: ValidationBuilder().required().build(),
                            controller: provider.passwordController,
                          ),
                          _submitButton(),
                        ]
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: e,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
