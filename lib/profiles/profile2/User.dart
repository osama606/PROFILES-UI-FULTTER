class User {
  String name ,address ,about ;
  User({this.name,this.address,this.about});
}

class profile{
  User user;
  int followers, follwing ,friends;
  profile({this.user,this.followers,this.follwing,this.friends});
}