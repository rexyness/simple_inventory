import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/loading_screen.dart';
import 'package:simple_inventory/features/home/admin_screen.dart';
import 'package:simple_inventory/features/home/staff_screen.dart';
import 'package:simple_inventory/features/home/supervisor_screen.dart';
import 'package:simple_inventory/providers/home_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(homeProvider).when(admin: () {
      return const AdminScreen();
    }, supervisor: () {
      return const SupervisorScreen();
    }, staff: () {
      return const StaffScreen();
    }, none: () {
      return const LoadingScreen();
    }); //
  }
}
