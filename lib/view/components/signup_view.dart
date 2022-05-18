import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/auth_provider.dart';
import 'package:flutter_todo_app/provider/signup_provider.dart';
import 'package:flutter_todo_app/view/view_utils.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpProvider(),
      child: _formWidget(),
    );
  }

  submit(BuildContext context, SignUpProvider provider) async {
    try {
      await provider.submit();
      if (GetIt.I<AuthProvider>().session != null) {
        Navigator.pop(context);
      }
    } catch (e) {
      ViewUtils.showSnackBar(context, e.toString());
    }
  }

  Widget _submitButton() {
    return Consumer<SignUpProvider>(builder: (context, provider, child) {
      if (provider.submitting) {
        return const CircularProgressIndicator();
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              submit(context, provider);
            },
            child: Text(t.auth.signup),
          ),
        ]
            .map((e) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: e,
                ))
            .toList(),
      );
    });
  }

  Widget _formWidget() {
    return Consumer<SignUpProvider>(
      builder: (context, provider, child) => Center(
        child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                const Icon(
                  Icons.person_add_alt_outlined,
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
                            readOnly: provider.submitting,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_rounded),
                              hintText: t.auth.username,
                              border: const OutlineInputBorder(),
                            ),
                            validator: ValidationBuilder().required().minLength(4).build(),
                            controller: provider.usernameController,
                          ),
                          TextFormField(
                            readOnly: provider.submitting,
                            textInputAction: TextInputAction.next,
                            obscureText: provider.hidePassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key_rounded),
                              suffixIcon: IconButton(
                                focusNode: FocusNode(skipTraversal: true),
                                icon: Icon(provider.hidePassword ? Icons.visibility_rounded : Icons.visibility_off_rounded),
                                onPressed: () => provider.togglePasswordVisibility(),
                              ),
                              hintText: t.auth.password,
                              border: const OutlineInputBorder(),
                            ),
                            validator: ValidationBuilder().required().minLength(8).build(),
                            controller: provider.passwordController,
                          ),
                          TextFormField(
                            readOnly: provider.submitting,
                            onFieldSubmitted: (_) => submit(context, provider),
                            textInputAction: TextInputAction.done,
                            obscureText: provider.hideConfirmPassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key_rounded),
                              suffixIcon: IconButton(
                                focusNode: FocusNode(skipTraversal: true),
                                icon: Icon(provider.hideConfirmPassword ? Icons.visibility_rounded : Icons.visibility_off_rounded),
                                onPressed: () => provider.toggleConfirmPasswordVisibility(),
                              ),
                              hintText: t.auth.repeatPassword,
                              border: const OutlineInputBorder(),
                            ),
                            validator: ValidationBuilder().add((value) {
                              if (provider.passwordController.text != value) {
                                return t.auth.passwordMustMatch;
                              } else {
                                return null;
                              }
                            }).build(),
                            controller: provider.passwordConfirmController,
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
