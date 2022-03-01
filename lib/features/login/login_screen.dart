import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/auth_provider.dart';
import '../../providers/states/auth_state.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authProvider,
      (_, authState) => authState.maybeWhen(
        orElse: () => null,
        failed: (reason) async {
          // await showDialog<bool>(
            
          // );
          return null;
        },
      ),
    );
    return  Scaffold(
      appBar: AppBar(title: const Text('Login'),),
    );
  }
}
