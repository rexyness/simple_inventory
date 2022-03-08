import 'package:freezed_annotation/freezed_annotation.dart';


part 'add_new_user_state.freezed.dart';

@freezed
class AddNewUserState with _$AddNewUserState {

  const factory AddNewUserState.idle() = IDLE;
  
  const factory AddNewUserState.loading() = LOADING;

  const factory AddNewUserState.sucess() = SUCESS;

  const factory AddNewUserState.failed({required String reason}) = FAILED;
}
