import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/constants.dart';
import 'package:simple_inventory/core/widgets/glass_box.dart';
import 'package:simple_inventory/features/home/manage_users/manage_users.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:simple_inventory/theme/palette.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AdminScreen extends ConsumerWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: Palette.backgroundGradient,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin Screen'),
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
        body: Padding(
          padding: const EdgeInsets.all(kBorderRadius),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GlassBox(
                  onTap: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const ManageUsers(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.account_box,
                        size: 42.0,
                      ),
                      Text(
                        'Manage Users',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                GlassBox(
                  onTap: () async {
                    showTopSnackBar(
                      context,
                      const CustomSnackBar.error(
                        message: 'This feature is not implemented yet.',
                      ),
                    );
                    return;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.dashboard,
                        size: 42.0,
                      ),
                      Text(
                        'Dashboard',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
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
