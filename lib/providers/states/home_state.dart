import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {

  const factory HomeState.admin() = ADMIN;

  const factory HomeState.supervisor() = SUPERVISOR;

  const factory HomeState.staff() =
      STAFF;

  const factory HomeState.none() = NONE;
}
