import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/features/login/login_screen.dart';
import 'package:simple_inventory/providers/top_level_providers.dart';

import 'core/widgets/error_content.dart';

class AuthWidget extends ConsumerWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authStateChangesProvider).when(
          data: (user) {
            return user == null
                ? const LoginScreen()
                : const Scaffold(
                    body: Text('Home'),
                  );
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (_, __) => const Scaffold(
            body: EmptyContent(
              title: 'Something went wrong',
              message: 'Can\'t load data right now.',
            ),
          ),
        );
  }
}
