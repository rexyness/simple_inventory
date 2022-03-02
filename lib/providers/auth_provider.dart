import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:simple_inventory/providers/top_level_providers.dart';

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  final auth = ref.watch(authStateChangesProvider);
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  return AuthProvider(auth, firebaseAuth);
});

class AuthProvider extends StateNotifier<AuthState> {
  final AsyncValue<User?> _currentUser;
  final FirebaseAuth _firebaseAuth;
  AuthProvider(this._currentUser, this._firebaseAuth) : super(const AuthState.authenticating()) {
    init();
  }

  void init() {
    if (_currentUser.asData?.value == null) {
      state = const AuthState.unauthenticated();
      return;
    }
    // TODO: Fetch role from Firestore and put it here
    if (mounted) state = const AuthState.authenticated(fullName: 'Lola');
    return;
  }

  Future<void> login(String email, String password) async {
    try {
      state = const AuthState.authenticating();
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      // TODO: Fetch role from Firestore and put it here
      if (mounted) state = const AuthState.authenticated(fullName: 'Admin');
    } on FirebaseAuthException catch (e) {
      state = AuthState.failed(reason: e.message ?? 'something went wrong');
    }
  }

  Future<void> logout() async {
    if (mounted) state = const AuthState.unauthenticated();
    await _firebaseAuth.signOut();
  }
}
