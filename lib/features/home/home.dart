import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/widgets/primary_button.dart';
import 'package:simple_inventory/providers/auth_provider.dart';

class HomeScreen extends ConsumerWidget {
  final String name;
  final role userRole;
  const HomeScreen({
    Key? key,
    required this.name,
    required this.userRole,
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
    ); //
  }
}
