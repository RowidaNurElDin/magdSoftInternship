import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

@JsonSerializable()
class User{
  int id ;
  String name;
  String phone;
  String lang;
  String image;
  String email;

  User(this.id , this.name , this.image , this.phone , this.email , this.lang);
  factory User.fromJson(Map<String , dynamic> json)=> _$UserFromJson(json);
  Map<String,dynamic> toJson() => _$UserToJson(this);
}