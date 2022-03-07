import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/core/loading_screen.dart';
import 'package:simple_inventory/core/widgets/scaffold_gradient.dart';
import 'package:simple_inventory/features/home/manage_users/add_user/add_user.dart';
import 'package:simple_inventory/models/user_firestore.dart';
import 'package:simple_inventory/providers/add_user_provider.dart';
import 'package:simple_inventory/providers/states/add_new_user_state.dart';

import 'package:simple_inventory/services/firestore_path.dart';
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
            await Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const AddUser(),
              ),
            );
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
                          onPressed: () async {
                            await CoolAlert.show(
                                context: context,
                                type: CoolAlertType.confirm,
                                
                                onConfirmBtnTap: () {},
                                confirmBtnColor: Colors.red,
                                title: 'Suspend ${users[index].name} ?');
                          },
                          icon: Icon(Icons.block)),
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
  if(userRole == role.admin) return Colors.red;
  if(userRole == role.staff) return Colors.green;
  if(userRole == role.supervisor) return Colors.blue;
  return Colors.grey;
}

final usersStreamProvider = StreamProvider.autoDispose<List<UserFirestore>>((ref) {
  final db = FirebaseFirestore.instance;
  final streamy = db.collection(FirestorePath.users()).snapshots().map((event) {
    return event.docs.map((e) {
      return UserFirestore.fromJson(e.data());
    }).toList();
  });
  return streamy;
});
