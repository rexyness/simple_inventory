// 1
import 'package:firebase_auth/firebase_auth.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/services/firestore_database.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

// 2
final authStateChangesProvider = StreamProvider<User?>((ref) => ref.watch(firebaseAuthProvider).authStateChanges());

// 3
final databaseProvider = Provider<FirestoreDatabase?>((ref) {
  final auth = ref.watch(authStateChangesProvider);

  // we only have a valid DB if the user is signed in
  if (auth.asData?.value?.uid != null) {
    return FirestoreDatabase(uid: auth.asData!.value!.uid);
  }
  // else we return null
  return null;
});
