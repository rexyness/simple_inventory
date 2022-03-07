import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:simple_inventory/providers/states/home_state.dart';

class HomeProvider extends StateNotifier<HomeState> {
  final AuthState _authState;
  HomeProvider(this._authState) : super(const HomeState.none()) {
    init();
  }

  void init() {
    _authState.maybeWhen(
        orElse: () {},
        authenticated: (name, userRole) {
          if (userRole == role.admin) state = const HomeState.admin();
          if (userRole == role.supervisor) state = const HomeState.supervisor();
          if (userRole == role.staff) state = const HomeState.staff();
          if (userRole == role.none) state = const HomeState.none();
        });
  }
}

final homeProvider = StateNotifierProvider<HomeProvider, HomeState>((ref) {
  final authState = ref.watch(authProvider);
  return HomeProvider(authState);
});
