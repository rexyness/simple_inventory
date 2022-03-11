// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:simple_inventory/features/home/home.dart';
import 'package:simple_inventory/features/home/manage_users/add_user/add_user.dart';
import 'package:simple_inventory/features/home/manage_users/manage_users.dart';
import 'package:simple_inventory/features/login/login_screen.dart';
import 'package:simple_inventory/providers/auth_provider.dart';
import 'package:simple_inventory/providers/states/auth_state.dart';
import 'package:simple_inventory/theme/custom_theme.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

Future<void> main() async {
  final x = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterNativeSplash.preserve(widgetsBinding: x);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    late final _router = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/user-managment',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ManageUsers(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeInOut)),
                  ),
                  child: child),
          ),
          routes: [
            GoRoute(
              path: 'add-user',
              builder: (context, state) => const AddUser(),
            ),
          ],
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
      ],
      refreshListenable: ref.watch(authRefreshListener),
      // redirect to the login page if the user is not logged in
      redirect: (state) {
        // if the user is not logged in, they need to login
        final loggedIn = ref.watch(authRefreshListener).value;
        final loggingIn = state.subloc == '/login';
        if (!loggedIn) return loggingIn ? null : '/login';

        // if the user is logged in but still on the login page, send them to
        // the home page
        if (loggingIn) return '/';

        // no need to redirect at all
        return null;
      },
    );
    ref.listen<AuthState>(
      authProvider,
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
        authenticated: (name, userRole) {
          showTopSnackBar(
            context,
            CustomSnackBar.success(
              message: "Hello $name , Welcome Aboard !",
              backgroundColor: (Colors.blue[300])!,
            ),
          );
          return;
        },
      ),
    );
    return MaterialApp.router(
      title: 'Simple Inventory',
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.darkTheme(context),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
    );
  }
}

final authRefreshListener = Provider<ValueNotifier<bool>>((ref) {
  final notifier = ValueNotifier<bool>(false);
  ref.listen<AuthState>(authProvider, (_, next) {
    next.maybeWhen(orElse: () {
      notifier.value = false;
    }, authenticated: (_, __) {
      log('I"m notfied');
      notifier.value = true;
    });
    notifier.notifyListeners();
  });
  return notifier;
});
