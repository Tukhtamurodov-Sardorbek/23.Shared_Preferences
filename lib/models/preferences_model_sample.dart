class Users{
  late String id;
  late String email;
  late String password;

  Users({required this.id, required this.email, required this.password});

  Users.from({required this.id, required this.email, required this.password});

  Users.fromJson(Map<String, dynamic> json) : id = json['id'], email = json['email'], password = json['password'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'password': password
  };

}