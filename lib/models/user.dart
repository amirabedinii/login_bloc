import 'package:equatable/equatable.dart';

class User extends Equatable {
  User({
    this.id,
    this.password,
    this.userName,
  });

  String? userName;
  String? id;
  String? password;

  User.fromJson(Map<String, dynamic> json) {
    userName = json['user_name']??"";
    password = json['password']??'';
    id = json['id']??'';
  }

  Map<String , dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user_name'] = userName;
    data['password'] = password;
    data['id'] = id;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [userName, id, password];


}
