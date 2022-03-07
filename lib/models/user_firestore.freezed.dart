// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_firestore.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFirestore _$UserFirestoreFromJson(Map<String, dynamic> json) {
  return _UserFirestore.fromJson(json);
}

/// @nodoc
class _$UserFirestoreTearOff {
  const _$UserFirestoreTearOff();

  _UserFirestore call(
      String name, @JsonKey(name: 'role') role userRole, String id) {
    return _UserFirestore(
      name,
      userRole,
      id,
    );
  }

  UserFirestore fromJson(Map<String, Object?> json) {
    return UserFirestore.fromJson(json);
  }
}

/// @nodoc
const $UserFirestore = _$UserFirestoreTearOff();

/// @nodoc
mixin _$UserFirestore {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  role get userRole => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFirestoreCopyWith<UserFirestore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFirestoreCopyWith<$Res> {
  factory $UserFirestoreCopyWith(
          UserFirestore value, $Res Function(UserFirestore) then) =
      _$UserFirestoreCopyWithImpl<$Res>;
  $Res call({String name, @JsonKey(name: 'role') role userRole, String id});
}

/// @nodoc
class _$UserFirestoreCopyWithImpl<$Res>
    implements $UserFirestoreCopyWith<$Res> {
  _$UserFirestoreCopyWithImpl(this._value, this._then);

  final UserFirestore _value;
  // ignore: unused_field
  final $Res Function(UserFirestore) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? userRole = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as role,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserFirestoreCopyWith<$Res>
    implements $UserFirestoreCopyWith<$Res> {
  factory _$UserFirestoreCopyWith(
          _UserFirestore value, $Res Function(_UserFirestore) then) =
      __$UserFirestoreCopyWithImpl<$Res>;
  @override
  $Res call({String name, @JsonKey(name: 'role') role userRole, String id});
}

/// @nodoc
class __$UserFirestoreCopyWithImpl<$Res>
    extends _$UserFirestoreCopyWithImpl<$Res>
    implements _$UserFirestoreCopyWith<$Res> {
  __$UserFirestoreCopyWithImpl(
      _UserFirestore _value, $Res Function(_UserFirestore) _then)
      : super(_value, (v) => _then(v as _UserFirestore));

  @override
  _UserFirestore get _value => super._value as _UserFirestore;

  @override
  $Res call({
    Object? name = freezed,
    Object? userRole = freezed,
    Object? id = freezed,
  }) {
    return _then(_UserFirestore(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userRole == freezed
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as role,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFirestore extends _UserFirestore {
  const _$_UserFirestore(
      this.name, @JsonKey(name: 'role') this.userRole, this.id)
      : super._();

  factory _$_UserFirestore.fromJson(Map<String, dynamic> json) =>
      _$$_UserFirestoreFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'role')
  final role userRole;
  @override
  final String id;

  @override
  String toString() {
    return 'UserFirestore(name: $name, userRole: $userRole, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserFirestore &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.userRole, userRole) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(userRole),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$UserFirestoreCopyWith<_UserFirestore> get copyWith =>
      __$UserFirestoreCopyWithImpl<_UserFirestore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFirestoreToJson(this);
  }
}

abstract class _UserFirestore extends UserFirestore {
  const factory _UserFirestore(
          String name, @JsonKey(name: 'role') role userRole, String id) =
      _$_UserFirestore;
  const _UserFirestore._() : super._();

  factory _UserFirestore.fromJson(Map<String, dynamic> json) =
      _$_UserFirestore.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'role')
  role get userRole;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$UserFirestoreCopyWith<_UserFirestore> get copyWith =>
      throw _privateConstructorUsedError;
}
