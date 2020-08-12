//this is used to just get the uid of FireBaseUser
class User {
  final String uid;

  User({this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String sugars;
  final int strength;

  UserData({this.uid, this.name, this.sugars, this.strength});
}
