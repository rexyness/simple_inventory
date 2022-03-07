import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_inventory/providers/states/home_state.dart';

class HomeProvider extends StateNotifier<HomeState> {
  HomeProvider(): super(const HomeState.none());
  
}