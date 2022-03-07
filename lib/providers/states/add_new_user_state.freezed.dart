// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_new_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddNewUserStateTearOff {
  const _$AddNewUserStateTearOff();

  IDLE idle() {
    return const IDLE();
  }

  SUCESS sucess() {
    return const SUCESS();
  }

  FAILED failed({required String reason}) {
    return FAILED(
      reason: reason,
    );
  }
}

/// @nodoc
const $AddNewUserState = _$AddNewUserStateTearOff();

/// @nodoc
mixin _$AddNewUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() sucess,
    required TResult Function(String reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDLE value) idle,
    required TResult Function(SUCESS value) sucess,
    required TResult Function(FAILED value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewUserStateCopyWith<$Res> {
  factory $AddNewUserStateCopyWith(
          AddNewUserState value, $Res Function(AddNewUserState) then) =
      _$AddNewUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddNewUserStateCopyWithImpl<$Res>
    implements $AddNewUserStateCopyWith<$Res> {
  _$AddNewUserStateCopyWithImpl(this._value, this._then);

  final AddNewUserState _value;
  // ignore: unused_field
  final $Res Function(AddNewUserState) _then;
}

/// @nodoc
abstract class $IDLECopyWith<$Res> {
  factory $IDLECopyWith(IDLE value, $Res Function(IDLE) then) =
      _$IDLECopyWithImpl<$Res>;
}

/// @nodoc
class _$IDLECopyWithImpl<$Res> extends _$AddNewUserStateCopyWithImpl<$Res>
    implements $IDLECopyWith<$Res> {
  _$IDLECopyWithImpl(IDLE _value, $Res Function(IDLE) _then)
      : super(_value, (v) => _then(v as IDLE));

  @override
  IDLE get _value => super._value as IDLE;
}

/// @nodoc

class _$IDLE implements IDLE {
  const _$IDLE();

  @override
  String toString() {
    return 'AddNewUserState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IDLE);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() sucess,
    required TResult Function(String reason) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDLE value) idle,
    required TResult Function(SUCESS value) sucess,
    required TResult Function(FAILED value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IDLE implements AddNewUserState {
  const factory IDLE() = _$IDLE;
}

/// @nodoc
abstract class $SUCESSCopyWith<$Res> {
  factory $SUCESSCopyWith(SUCESS value, $Res Function(SUCESS) then) =
      _$SUCESSCopyWithImpl<$Res>;
}

/// @nodoc
class _$SUCESSCopyWithImpl<$Res> extends _$AddNewUserStateCopyWithImpl<$Res>
    implements $SUCESSCopyWith<$Res> {
  _$SUCESSCopyWithImpl(SUCESS _value, $Res Function(SUCESS) _then)
      : super(_value, (v) => _then(v as SUCESS));

  @override
  SUCESS get _value => super._value as SUCESS;
}

/// @nodoc

class _$SUCESS implements SUCESS {
  const _$SUCESS();

  @override
  String toString() {
    return 'AddNewUserState.sucess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SUCESS);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() sucess,
    required TResult Function(String reason) failed,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDLE value) idle,
    required TResult Function(SUCESS value) sucess,
    required TResult Function(FAILED value) failed,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class SUCESS implements AddNewUserState {
  const factory SUCESS() = _$SUCESS;
}

/// @nodoc
abstract class $FAILEDCopyWith<$Res> {
  factory $FAILEDCopyWith(FAILED value, $Res Function(FAILED) then) =
      _$FAILEDCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$FAILEDCopyWithImpl<$Res> extends _$AddNewUserStateCopyWithImpl<$Res>
    implements $FAILEDCopyWith<$Res> {
  _$FAILEDCopyWithImpl(FAILED _value, $Res Function(FAILED) _then)
      : super(_value, (v) => _then(v as FAILED));

  @override
  FAILED get _value => super._value as FAILED;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(FAILED(
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILED implements FAILED {
  const _$FAILED({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'AddNewUserState.failed(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FAILED &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  $FAILEDCopyWith<FAILED> get copyWith =>
      _$FAILEDCopyWithImpl<FAILED>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() sucess,
    required TResult Function(String reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
  }) {
    return failed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? sucess,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IDLE value) idle,
    required TResult Function(SUCESS value) sucess,
    required TResult Function(FAILED value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IDLE value)? idle,
    TResult Function(SUCESS value)? sucess,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FAILED implements AddNewUserState {
  const factory FAILED({required String reason}) = _$FAILED;

  String get reason;
  @JsonKey(ignore: true)
  $FAILEDCopyWith<FAILED> get copyWith => throw _privateConstructorUsedError;
}
