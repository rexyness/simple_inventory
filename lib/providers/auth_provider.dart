import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:simple_inventory/providers/top_level_providers.dart';

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  final auth = ref.watch(authStateChangesProvider);
  return AuthProvider(auth);
});

class AuthProvider extends StateNotifier<AuthState> {
  final AsyncValue<User?> _currentUser;
  AuthProvider(this._currentUser) : super(const AuthState.authenticating()) {
    init();
  }

  void init() {
    _currentUser.asData?.value == null
        ? state = const AuthState.unauthenticated()
        : state = const AuthState.authenticated(fullName: "Admin");
  }
}
