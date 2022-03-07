// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_firestore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserFirestore _$$_UserFirestoreFromJson(Map<String, dynamic> json) =>
    _$_UserFirestore(
      json['name'] as String,
      $enumDecode(_$roleEnumMap, json['role']),
      json['id'] as String,
    );

Map<String, dynamic> _$$_UserFirestoreToJson(_$_UserFirestore instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': _$roleEnumMap[instance.userRole],
      'id': instance.id,
    };

const _$roleEnumMap = {
  role.admin: 'admin',
  role.supervisor: 'supervisor',
  role.staff: 'staff',
  role.none: 'none',
};
