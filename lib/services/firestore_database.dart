// ignore_for_file: unused_field

import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../providers/auth_provider.dart';
import 'firestore_path.dart';

String roleToString(role x) {
  if (x == role.admin) {
    return 'admin';
  }
  if (x == role.supervisor) {
    return 'supervisor';
  }
  if (x == role.staff) {
    return 'staff';
  }
  return 'none';
}

role stringToRole(String x) {
  if (x.contains('admin')) {
    return role.admin;
  }
  if (x.contains('supervisor')) {
    return role.supervisor;
  }
  if (x.contains('staff')) {
    return role.staff;
  }
  return role.none;
}

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

/// A utility class for all CRUD operations with the database.
/// Has no state , uses _service to interact with the database internally.
class FirestoreDatabase {
  FirestoreDatabase({required this.uid});
  final String uid;

  final _service = FirebaseFirestore.instance;

  Future<NameRole> getNameAndRole() async {
    log('Begin getNameRole for $uid');
    final document = await _service.doc(FirestorePath.user(uid)).get();
    final data = document.data();
    final fullName = data?['name'].toString() ?? '';
    final role = data?['role'].toString() ?? 'none';

    return NameRole(name: fullName, x: stringToRole(role));
  }
}

class NameRole {
  final String name;
  final role x;
  NameRole({
    required this.name,
    required this.x,
  });

  NameRole copyWith({
    String? name,
    role? x,
  }) {
    return NameRole(
      name: name ?? this.name,
      x: x ?? this.x,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'NameRole(name: $name, x: $x)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NameRole && other.name == name && other.x == x;
  }

  @override
  int get hashCode => name.hashCode ^ x.hashCode;
}
