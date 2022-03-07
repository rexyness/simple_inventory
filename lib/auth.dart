import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:simple_inventory/features/home/home.dart';
import 'package:simple_inventory/features/login/login_screen.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AuthWidget extends ConsumerWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    ref.listen<AuthState>(
      authProvider,
      (_, authState) => authState.maybeWhen(
        orElse: () => null,
        
        failed: (reason) async {
          showTopSnackBar(
            context,
            CustomSnackBar.error(
              message: reason,
              
            ),
          );
          return;
          
        },
        authenticated: (name, userRole) {
          showTopSnackBar(
            context,
            CustomSnackBar.success(
              message: "Hello $name , Welcome Aboard !",
              backgroundColor: (Colors.blue[300])!,
            ),
          );
          return;
        },
      ),
    );
    return ref.watch(authProvider).maybeWhen(
        orElse: () => const LoginScreen(),
        authenticated: (name, userRole) => HomeScreen(name: name, userRole: userRole));
  }
}

