

// ignore_for_file: unused_field

import 'package:cloud_firestore/cloud_firestore.dart';


String documentIdFromCurrentDate() => DateTime.now().toIso8601String();


/// A utility class for all CRUD operations with the database.
/// Has no state , uses _service to interact with the database internally.
class FirestoreDatabase {
  FirestoreDatabase({required this.uid});
  final String uid;

  final _service = FirebaseFirestore.instance;

  
}
