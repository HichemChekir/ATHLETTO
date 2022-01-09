import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference benchCollection =
      FirebaseFirestore.instance.collection('bench');

  Future updateUserData(DateTime date, List<Float> weight, List<int> Reps) async {
    return await benchCollection.doc(uid).set({
      'weight': weight,
      'reps': Reps,
      'date': date,
    });
  }
}
