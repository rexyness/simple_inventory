// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  UNAUTHENTICATED unauthenticated() {
    return const UNAUTHENTICATED();
  }

  AUTHENTICATING authenticating() {
    return const AUTHENTICATING();
  }

  AUTHENTICATED authenticated({required String fullName}) {
    return AUTHENTICATED(
      fullName: fullName,
    );
  }

  FAILED failed({required String reason}) {
    return FAILED(
      reason: reason,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(String fullName) authenticated,
    required TResult Function(String reason) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHENTICATED value) unauthenticated,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $UNAUTHENTICATEDCopyWith<$Res> {
  factory $UNAUTHENTICATEDCopyWith(
          UNAUTHENTICATED value, $Res Function(UNAUTHENTICATED) then) =
      _$UNAUTHENTICATEDCopyWithImpl<$Res>;
}

/// @nodoc
class _$UNAUTHENTICATEDCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UNAUTHENTICATEDCopyWith<$Res> {
  _$UNAUTHENTICATEDCopyWithImpl(
      UNAUTHENTICATED _value, $Res Function(UNAUTHENTICATED) _then)
      : super(_value, (v) => _then(v as UNAUTHENTICATED));

  @override
  UNAUTHENTICATED get _value => super._value as UNAUTHENTICATED;
}

/// @nodoc

class _$UNAUTHENTICATED implements UNAUTHENTICATED {
  const _$UNAUTHENTICATED();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UNAUTHENTICATED);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(String fullName) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHENTICATED value) unauthenticated,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UNAUTHENTICATED implements AuthState {
  const factory UNAUTHENTICATED() = _$UNAUTHENTICATED;
}

/// @nodoc
abstract class $AUTHENTICATINGCopyWith<$Res> {
  factory $AUTHENTICATINGCopyWith(
          AUTHENTICATING value, $Res Function(AUTHENTICATING) then) =
      _$AUTHENTICATINGCopyWithImpl<$Res>;
}

/// @nodoc
class _$AUTHENTICATINGCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AUTHENTICATINGCopyWith<$Res> {
  _$AUTHENTICATINGCopyWithImpl(
      AUTHENTICATING _value, $Res Function(AUTHENTICATING) _then)
      : super(_value, (v) => _then(v as AUTHENTICATING));

  @override
  AUTHENTICATING get _value => super._value as AUTHENTICATING;
}

/// @nodoc

class _$AUTHENTICATING implements AUTHENTICATING {
  const _$AUTHENTICATING();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AUTHENTICATING);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(String fullName) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHENTICATED value) unauthenticated,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class AUTHENTICATING implements AuthState {
  const factory AUTHENTICATING() = _$AUTHENTICATING;
}

/// @nodoc
abstract class $AUTHENTICATEDCopyWith<$Res> {
  factory $AUTHENTICATEDCopyWith(
          AUTHENTICATED value, $Res Function(AUTHENTICATED) then) =
      _$AUTHENTICATEDCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class _$AUTHENTICATEDCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AUTHENTICATEDCopyWith<$Res> {
  _$AUTHENTICATEDCopyWithImpl(
      AUTHENTICATED _value, $Res Function(AUTHENTICATED) _then)
      : super(_value, (v) => _then(v as AUTHENTICATED));

  @override
  AUTHENTICATED get _value => super._value as AUTHENTICATED;

  @override
  $Res call({
    Object? fullName = freezed,
  }) {
    return _then(AUTHENTICATED(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AUTHENTICATED implements AUTHENTICATED {
  const _$AUTHENTICATED({required this.fullName});

  @override
  final String fullName;

  @override
  String toString() {
    return 'AuthState.authenticated(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AUTHENTICATED &&
            const DeepCollectionEquality().equals(other.fullName, fullName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fullName));

  @JsonKey(ignore: true)
  @override
  $AUTHENTICATEDCopyWith<AUTHENTICATED> get copyWith =>
      _$AUTHENTICATEDCopyWithImpl<AUTHENTICATED>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(String fullName) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return authenticated(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
  }) {
    return authenticated?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UNAUTHENTICATED value) unauthenticated,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AUTHENTICATED implements AuthState {
  const factory AUTHENTICATED({required String fullName}) = _$AUTHENTICATED;

  String get fullName;
  @JsonKey(ignore: true)
  $AUTHENTICATEDCopyWith<AUTHENTICATED> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAILEDCopyWith<$Res> {
  factory $FAILEDCopyWith(FAILED value, $Res Function(FAILED) then) =
      _$FAILEDCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class _$FAILEDCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.failed(reason: $reason)';
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
    required TResult Function() unauthenticated,
    required TResult Function() authenticating,
    required TResult Function(String fullName) authenticated,
    required TResult Function(String reason) failed,
  }) {
    return failed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
    TResult Function(String reason)? failed,
  }) {
    return failed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticating,
    TResult Function(String fullName)? authenticated,
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
    required TResult Function(UNAUTHENTICATED value) unauthenticated,
    required TResult Function(AUTHENTICATING value) authenticating,
    required TResult Function(AUTHENTICATED value) authenticated,
    required TResult Function(FAILED value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UNAUTHENTICATED value)? unauthenticated,
    TResult Function(AUTHENTICATING value)? authenticating,
    TResult Function(AUTHENTICATED value)? authenticated,
    TResult Function(FAILED value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FAILED implements AuthState {
  const factory FAILED({required String reason}) = _$FAILED;

  String get reason;
  @JsonKey(ignore: true)
  $FAILEDCopyWith<FAILED> get copyWith => throw _privateConstructorUsedError;
}
