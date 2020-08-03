import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //firebase collection reference
  final CollectionReference userInfoCollection = Firestore.instance.collection(
      'user_info'); //either creates to reference 'user_info' collection

  Future updateUserData(String sugars, String name, int strength) async {
    return await userInfoCollection.document(uid).setData({
      //giving the uid links the user with the doc
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  //get user_info stream(to know when document is added or updated)
  Stream<QuerySnapshot> get userInfo {
    return userInfoCollection.snapshots();
  }
}
