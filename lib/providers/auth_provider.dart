import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:simple_inventory/providers/top_level_providers.dart';
import 'package:simple_inventory/services/firestore_database.dart';

enum role { admin, supervisor, staff, none }

String roleToString(role x) {
  if (x == role.admin) {
    return 'admin';
  }
  if (x == role.supervisor) {
    return 'supervisor';
  }
  if (x == role.staff) {
    return 'staff';
  }
  return 'none';
}

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  final auth = ref.watch(authStateChangesProvider);
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  return AuthProvider(auth, firebaseAuth, FirestoreDatabase(uid: auth.asData?.value?.uid ?? ''));
});

class AuthProvider extends StateNotifier<AuthState> {
  final AsyncValue<User?> _currentUser;
  final FirestoreDatabase _firestoreDatabase;
  final FirebaseAuth _firebaseAuth;
  AuthProvider(this._currentUser, this._firebaseAuth, this._firestoreDatabase)
      : super(const AuthState.authenticating()) {
    init();
  }

  Future<void> init() async {
    _currentUser.maybeWhen(
        orElse: () {},
        data: (user) async {
          FlutterNativeSplash.remove();
          if (user == null) {
            state = const AuthState.unauthenticated();
            return;
          }
          final x = await _firestoreDatabase.getNameAndRole();
          if (x.x == role.none) {
            if (mounted) state = const AuthState.failed(reason: "Account suspended");
            await _firebaseAuth.signOut();
            return;
          }
          if (mounted) {
            state = AuthState.authenticated(fullName: x.name, userRole: x.x);
          }
          return;
        });

    // final x = await _firestoreDatabase.getNameAndRole();
    // if (x.x == role.none) {
    //   if (mounted) state = const AuthState.failed(reason: "Account suspended");
    //   await _firebaseAuth.signOut();
    //   return;
    // }
    // if (mounted) state = AuthState.authenticated(fullName: x.name, userRole: x.x);
    // return;
  }

  Future<void> login(String email, String password) async {
    try {
      state = const AuthState.authenticating();
      await _firebaseAuth.signInWithEmailAndPassword(email: email.trim(), password: password.trim());
    } on FirebaseAuthException catch (e) {
      state = AuthState.failed(reason: e.message ?? 'something went wrong');
    }
  }

  Future<void> logout() async {
    if (mounted) state = const AuthState.authenticating();
    await _firebaseAuth.signOut();
    if (mounted) state = const AuthState.unauthenticated();
  }
}
