import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/providers/states/add_new_user_state.dart';

final addUserProvider = StateProvider.autoDispose<AddNewUserState>((ref) {
  return const AddNewUserState.idle();
});