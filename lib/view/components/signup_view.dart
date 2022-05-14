import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/i18n/strings.g.dart';
import 'package:flutter_todo_app/provider/signup_provider.dart';
import 'package:flutter_todo_app/view/pages/signin_page.dart';
import 'package:flutter_todo_app/view/view_utils.dart';
import 'package:form_validator/form_validator.dart';
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

  Widget _submitButton() {
    return Consumer<SignUpProvider>(builder: (context, provider, child) {
      if (provider.submitting) {
        return const CircularProgressIndicator();
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              try {
                await provider.submit();
              } catch (e) {
                ViewUtils.showSnackBar(context, e.toString());
              }
            },
            child: Text(t.auth.signup),
          ),
          OutlinedButton(
            onPressed: () {
              Beamer.of(context).beamToNamed(SignInLocation.path);
            },
            child: Text(t.auth.cancel),
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
                            validator: ValidationBuilder().required().minLength(8).build(),
                            controller: provider.passwordController,
                          ),
                          TextFormField(
                            onFieldSubmitted: (_) => provider.submit(),
                            textInputAction: TextInputAction.done,
                            obscureText: provider.hideConfirmPassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.key_rounded),
                              suffixIcon: IconButton(
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
