//this is used to just get the uid of FireBaseUser
class MyUser {
  final String uid;

  MyUser({this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String sugars;
  final int strength;

  UserData({this.uid, this.name, this.sugars, this.strength});
}
