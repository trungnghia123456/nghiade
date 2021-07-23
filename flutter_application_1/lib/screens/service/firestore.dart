import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/brew.dart';
import 'package:flutter_application_1/models/user.dart';

class DataBaseService {
  final String uid;
  DataBaseService({required this.uid});

  final CollectionReference ref =
      FirebaseFirestore.instance.collection('brews');

  //create a collection when new user regrister
  Future setNewData(String name, int strenght, String sugars) async {
    print('success create doc');
    return await ref
        .doc(this.uid)
        .set({'name': name, 'strenght': strenght, 'sugars': sugars});
  }

  List<Brew> _convertDataToListOfBrew(QuerySnapshot snapshot) {
    return snapshot.docs.map((e) {
      return Brew(
          name: e.get('name') ?? '',
          strenght: e.get('strenght') ?? 0,
          sugars: e.get('sugars') ?? '0');
    }).toList();
  }

  //stream of data
  Stream<List<Brew>> get brews {
    return ref.snapshots().map(_convertDataToListOfBrew);
  }

  //change document snapshot data to userdata
  UserData _changeSnapshotToUserData(DocumentSnapshot dcm) {
    return UserData(
        uid: dcm.id,
        name: dcm.get('name'),
        strenght: dcm.get('strenght'),
        sugars: dcm.get('sugars'));
  }

  Stream<UserData> get userData {
    return ref.doc(uid).snapshots().map(_changeSnapshotToUserData);
  }
}
