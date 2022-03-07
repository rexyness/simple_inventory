// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_inventory/providers/auth_provider.dart';

part 'user_firestore.freezed.dart';
part 'user_firestore.g.dart';

@freezed
class UserFirestore with _$UserFirestore {
  const UserFirestore._(); // Added constructor
  const factory UserFirestore(
    String name,
    @JsonKey(name: 'role') role userRole,
  ) = _UserFirestore;

  /// Connect the generated [_$UserFirestoreFromJson] function to the `fromJson`
  /// factory.
  factory UserFirestore.fromJson(Map<String, dynamic> json) => _$UserFirestoreFromJson(json);
}
