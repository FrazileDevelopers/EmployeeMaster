// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CloudFirestoreService with ChangeNotifier {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  /// Sets the signup fields
  // Future<void> setsignup(UserReference userReference) async => await firestore
  //     .document(
  //       FirestorePath.user(
  //         uid,
  //       ),
  //     )
  //     .setData(
  //       userReference.toMap(),
  //     );

  // /// Get the user details
  // Stream<UserReference> getuserdetails() => firestore
  //     .document(
  //       FirestorePath.user(
  //         uid,
  //       ),
  //     )
  //     .snapshots()
  //     .map(
  //       (snap) => UserReference.fromMap(snap.data),
  //     );
}
