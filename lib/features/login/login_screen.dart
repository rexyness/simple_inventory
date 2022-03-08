import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_inventory/core/loading_screen.dart';

import '../../core/constants.dart';
import '../../core/widgets/primary_button.dart';
import '../../providers/auth_provider.dart';
import '../../theme/palette.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

    return ref.watch(authProvider).maybeWhen(orElse: () {
      return AuthenticationBody();
    }, authenticating: () {
      return LoadingScreen();
    });
  }
}

class AuthenticationBody extends HookConsumerWidget {
  const AuthenticationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController(text: '');
    final passwordController = useTextEditingController(text: '');
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: Palette.backgroundGradient,
        ),
      ),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Form(
                  key: formKey,
                  child: ResponsiveRowColumn(
                      columnMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      columnPadding: const EdgeInsets.all(30),
                      columnSpacing: kListItemSpacing,
                      layout: ResponsiveRowColumnType.COLUMN,
                      children: [
                        // ResponsiveRowColumnItem(
                        //   child: Image.asset('assets/images/logo.png'),
                        // ),
                        ResponsiveRowColumnItem(
                          child: SizedBox(
                            height: kListItemSpacing,
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: ResponsiveValue(
                              context,
                              defaultValue: double.infinity,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: double.infinity,
                                ),
                                Condition.largerThan(
                                  name: TABLET,
                                  value: 500,
                                )
                              ],
                            ).value!.toDouble(),
                            child: TextFormField(
                              key: ValueKey('emailFormField'),
                              controller: emailController,
                               textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                labelText: 'Email',
                                errorStyle: TextStyle(
                                  overflow: TextOverflow.visible,
                                  inherit: true,
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: SizedBox(
                            width: ResponsiveValue(
                              context,
                              defaultValue: double.infinity,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: double.infinity,
                                ),
                                Condition.largerThan(
                                  name: TABLET,
                                  value: 500,
                                )
                              ],
                            ).value!.toDouble(),
                            child: TextFormField(
                              key: ValueKey('passwordFormField'),
                              controller: passwordController,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                            child: SizedBox(
                          width: double.infinity,
                        )),
                        ResponsiveRowColumnItem(
                          child: PrimaryButton(
                            onPressed: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              // Validate returns true if the form is valid, or false otherwise.
                              if (formKey.currentState!.validate()) {
                                await ref
                                    .read(authProvider.notifier)
                                    .login(emailController.text, passwordController.text);
                              }
                            },
                            text: 'Login',
                            width: ResponsiveValue(
                              context,
                              defaultValue: double.infinity,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: double.infinity,
                                ),
                                Condition.largerThan(
                                  name: TABLET,
                                  value: 500,
                                )
                              ],
                            ).value!.toDouble(),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: PrimaryButton(
                            onPressed: () {
                              emailController.text = 'admin@admin.com';
                              passwordController.text = 'rexyFlutter';
                            },
                            text: 'Admin Fields',
                            width: ResponsiveValue(
                              context,
                              defaultValue: double.infinity,
                              valueWhen: const [
                                Condition.smallerThan(
                                  name: MOBILE,
                                  value: double.infinity,
                                ),
                                Condition.largerThan(
                                  name: TABLET,
                                  value: 500,
                                )
                              ],
                            ).value!.toDouble(),
                          ),
                        ),
                        // ResponsiveRowColumnItem(
                        //   child: PrimaryButton(
                        //     onPressed: () {
                        //       ref.read(authScreenProvider.notifier).setLoginAccount(LoginType.tutor);
                        //     },
                        //     text: 'Tutor login',
                        //     width: ResponsiveValue(
                        //       context,
                        //       defaultValue: double.infinity,
                        //       valueWhen: const [
                        //         Condition.smallerThan(
                        //           name: MOBILE,
                        //           value: double.infinity,
                        //         ),
                        //         Condition.largerThan(
                        //           name: TABLET,
                        //           value: 500,
                        //         )
                        //       ],
                        //     ).value,
                        //   ),
                        // ),
                        // ResponsiveRowColumnItem(
                        //   child: PrimaryButton(
                        //     onPressed: () {
                        //       ref.read(authScreenProvider.notifier).setLoginAccount(LoginType.admin);
                        //     },
                        //     text: 'Admin login',
                        //     width: ResponsiveValue(
                        //       context,
                        //       defaultValue: double.infinity,
                        //       valueWhen: const [
                        //         Condition.smallerThan(
                        //           name: MOBILE,
                        //           value: double.infinity,
                        //         ),
                        //         Condition.largerThan(
                        //           name: TABLET,
                        //           value: 500,
                        //         )
                        //       ],
                        //     ).value,
                        //   ),
                        // ),
                      ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
