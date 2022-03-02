import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/widgets/primary_button.dart';
import 'package:simple_inventory/features/login/login_screen.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:simple_inventory/providers/top_level_providers.dart';

import 'core/widgets/error_content.dart';

class AuthWidget extends ConsumerWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authProvider,
      (_, authState) => authState.maybeWhen(
        orElse: () => null,
        authenticated: (name) async {
          print(name);
          await CoolAlert.show(context: context, text: 'Hello , $name', type: CoolAlertType.success);
          return;
        },
      ),
    );
    return ref.watch(authStateChangesProvider).when(
          data: (user) {
            return user == null ? const LoginScreen() : const HomeScreen();
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (_, __) => const Scaffold(
            body: EmptyContent(
              title: 'Something went wrong',
              message: 'Can\'t load data right now. Please exit the app',
            ),
          ),
        );
    // return ref.watch(authProvider).maybeMap(
    //     orElse: () => const LoginScreen(),
    //     authenticated: (a) {
    //       a.fullName;
    //       return Scaffold(
    //         body: Center(
    //           child: PrimaryButton(
    //             onPressed: () async {
    //               await ref.read(authProvider.notifier).logout();
    //             },
    //             text: "Log Out",
    //           ),
    //         ),
    //       );
    //     });
  }
}

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: PrimaryButton(
          onPressed: () async {
            await ref.read(authProvider.notifier).logout();
          },
          text: "Log Out",
        ),
      ),
    );
  }
}
