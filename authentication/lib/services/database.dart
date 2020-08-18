import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/models/userinfo.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

  //firebase collection reference
  final CollectionReference userInfoCollection = Firestore.instance.collection(
      'user_info'); //either creates or references 'user_info' collection

//  final CollectionReference restaurantInfoCollection = Firestore.instance
//      .collection('user_info')
//      .document(uid)
//      .collection('restaurant_info');

  Future updateUserData(
      {String restaurant_name,
      String location,
      String establishment_type,
      String phone_number,
      String gst_or_pan,
      String account_number,
      String ifsc_code,
      String account_holder_name,
      String authorized}) async {
    return await userInfoCollection.document(uid).setData({
      //giving the uid links the user with the doc
      'restaurant_name': restaurant_name,
      'location': location,
      'establishment_type': establishment_type,
      'phone_number': phone_number,
      'gst_or_pan': gst_or_pan,
      'account_number': account_number,
      'ifsc_code': ifsc_code,
      'account_holder_name': account_holder_name,
      'authorized': authorized
    });
  }

  Future updateRestaurantData(
      {String dishName,
      int originalPrice,
      int discountedPrice,
      String category,
      bool specialDish}) async {
    CollectionReference restaurantInfoCollection =
        userInfoCollection.document(uid).collection('dishes');
    return await restaurantInfoCollection.document(dishName).setData({
      'original_price': originalPrice,
      'discounted_price': discountedPrice,
      'category': category,
      'special_dish': specialDish,
    });
  }

  // UserInfo from Snapshot
  List<MyUserInfo> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      //map is used to iterate through(go through) the list of documents
      return MyUserInfo(
          name: doc.data['name'] ??
              '', // will give '' if 'name' key doesnt exist in database
          strength: doc.data['strength'] ?? 0,
          sugars: doc.data['sugars'] ?? '0');
    }).toList(); //since it will return an iterable if we dont convert to list
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      sugars: snapshot.data['sugars'],
      strength: snapshot.data['strength'],
    );
  }

  //get user_info stream(to know when document is added or updated)
//  Stream<QuerySnapshot> get userInfo {
//    return userInfoCollection.snapshots();
//  }
//}
  //changed to the below code for getting userinfo directly

  Stream<List<MyUserInfo>> get userInfo {
    return userInfoCollection.snapshots().map(_brewListFromSnapshot);
  }

  //get user doc stream
//  Stream<DocumentSnapshot> get userData {
//    return userInfoCollection.document(uid).snapshots();
//  }
//}
  //changed to the below code for getting userdata directly
  Stream<UserData> get userData {
    return userInfoCollection
        .document(uid)
        .snapshots()
        .map(_userDataFromSnapshot);
  }
}
