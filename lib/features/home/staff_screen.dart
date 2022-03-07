import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/widgets/scaffold_gradient.dart';

import '../../providers/auth_provider.dart';

class StaffScreen extends ConsumerWidget {
  const StaffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  ScaffoldGradient(
      child: Scaffold(
        appBar: AppBar(
          title:  const Text('Staff Screen'),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () async {
                await ref.read(authProvider.notifier).logout();
              },
              icon: const Icon(Icons.logout_outlined),
            )
          ],
        ),
      )
    );
  }
}