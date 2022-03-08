import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/widgets/glass_box.dart';
import 'package:simple_inventory/core/widgets/scaffold_gradient.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SupervisorScreen extends ConsumerWidget {
  const SupervisorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  ScaffoldGradient(
      child: Scaffold(
        appBar: AppBar(
          title:  const Text('Supervisor Screen'),
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
                          Icons.currency_exchange_sharp,
                          size: 42.0,
                        ),
                        Text(
                          'Sales History',
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
                          Icons.history,
                          size: 42.0,
                        ),
                        Text(
                          'Purchases History',
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
      )
    );
  }
}