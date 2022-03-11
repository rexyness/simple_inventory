import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/loading_screen.dart';
import 'package:simple_inventory/core/widgets/scaffold_gradient.dart';
import 'package:simple_inventory/features/home/manage_users/add_user/add_user.dart';
import 'package:simple_inventory/models/user_firestore.dart';
import 'package:simple_inventory/providers/add_user_provider.dart';
import 'package:simple_inventory/providers/states/add_new_user_state.dart';

import 'package:simple_inventory/services/firestore_path.dart';
import 'package:simple_inventory/theme/palette.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../providers/auth_provider.dart';

class ManageUsers extends HookConsumerWidget {
  const ManageUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AddNewUserState>(
      addUserProvider,
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
        sucess: () {
          showTopSnackBar(
            context,
            CustomSnackBar.success(
              message: "User has been added successfully",
              backgroundColor: (Colors.blue[300])!,
            ),
          );
          return;
        },
      ),
    );
    return ScaffoldGradient(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            
            GoRouter.of(context).push('/user-managment/add-user');
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Users Managment'),
          centerTitle: true,
        ),
        body: ref.watch(usersStreamProvider).when(
          data: (users) {
            return SizedBox(
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    child: ListTile(
                      tileColor: tileColor(users[index].userRole),
                      title: Text(
                        users[index].name,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      subtitle: Text(users[index].userRole.name),
                      trailing: IconButton(
                          color: Colors.red,
                          onPressed: () async {
                            if (users[index].userRole == role.none) {
                              await CoolAlert.show(
                                  context: context,
                                  type: CoolAlertType.confirm,
                                  cancelBtnText: 'Supervisor',
                                  confirmBtnText: 'Staff',
                                  onCancelBtnTap: () async {
                                    final db = FirebaseFirestore.instance;
                                    await db.doc(FirestorePath.user(users[index].id)).update({'role': 'supervisor'});
                                    Navigator.of(context).pop();
                                  },
                                  onConfirmBtnTap: () async {
                                    final db = FirebaseFirestore.instance;
                                    await db.doc(FirestorePath.user(users[index].id)).update({'role': 'staff'});
                                    Navigator.of(context).pop();
                                  },
                                  confirmBtnColor: Colors.red,
                                  title: 'Unsuspend ${users[index].name} and make him/her ?');
                              return;
                            }
                            await CoolAlert.show(
                                context: context,
                                type: CoolAlertType.confirm,
                                onConfirmBtnTap: () async {
                                  final db = FirebaseFirestore.instance;
                                  await db.doc(FirestorePath.user(users[index].id)).update({'role': 'none'});
                                  Navigator.of(context).pop();
                                },
                                confirmBtnColor: Colors.red,
                                title: 'Suspend ${users[index].name} ?');
                          },
                          icon: users[index].userRole == role.none
                              ? const Icon(
                                  Icons.assignment_turned_in_outlined,
                                  color: Palette.red500,
                                )
                              : const Icon(Icons.block)),
                    ),
                  );
                },
                itemCount: users.length,
              ),
            );
          },
          error: (e, es) {
            return ErrorWidget(e.toString());
          },
          loading: () {
            return const LoadingScreen();
          },
        ),
      ),
    );
  }
}

Color tileColor(role userRole) {
  if (userRole == role.admin) return Colors.red;
  if (userRole == role.staff) return Colors.indigo;
  if (userRole == role.supervisor) return Colors.blue;
  return Colors.grey;
}

final usersStreamProvider = StreamProvider.autoDispose<List<UserFirestore>>((ref) {
  final db = FirebaseFirestore.instance;
  final streamy = db.collection(FirestorePath.users()).snapshots().map((event) {
    return event.docs
        .map((e) {
          final element = e.data()..addAll({'id': e.id});
          return UserFirestore.fromJson(element);
        })
        .where((element) => element.userRole != role.admin)
        .toList();
  });
  return streamy;
});
