import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/constants.dart';
import 'package:simple_inventory/core/widgets/glass_box.dart';
import 'package:simple_inventory/core/widgets/scaffold_gradient.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../providers/auth_provider.dart';

class StaffScreen extends ConsumerWidget {
  const StaffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldGradient(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Staff Screen'),
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
        body: CustomScrollView(
          primary: false,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
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
                          Icons.note_alt_sharp,
                          size: 42.0,
                        ),
                        Text(
                          'Create an Invoice',
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
                          Icons.inventory_2_sharp,
                          size: 42.0,
                        ),
                        Text(
                          'Inventory',
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
                          Icons.indeterminate_check_box,
                          size: 42.0,
                        ),
                        Text(
                          'Defective Items',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
