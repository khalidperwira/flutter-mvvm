class MUser {
  /// atribute class
  // String id, job, name, created; // For post section
  String name, email, avatar;
  int id;

  /// constructor
  MUser({this.id, this.name, this.email, this.avatar});

  factory MUser.setUser(Map<String, dynamic> json) {
    var mUser = MUser(
        id: json['id'],
        name: json["first_name"] + " " + json["last_name"],
        email: json["email"],
        avatar: json["avatar"]);
    return mUser;
  }
}
