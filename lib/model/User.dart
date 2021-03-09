import 'dart:convert';

class User {
  final String name;
  final String email;
  final String password;

  User({this.name, this.email, this.password});

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        password = json['password'];
  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
      };

  void printUserInfo() {
    print(this.name);
    print(this.email);
    print(this.password);
  }
}

void main() {
  var jsonString =
      '{"name":"홍길동","email":"ydy1412@naver.com","password":"123",}';
  Map<String, dynamic> user = jsonDecode(jsonString);
  print("hi ${user['name']}");
  print("hi ${user['email']}");
  print("hi ${user['passwor']}");
  String newJson = jsonEncode(user);
  print(newJson);
}
