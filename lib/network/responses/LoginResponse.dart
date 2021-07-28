import 'package:json_annotation/json_annotation.dart';
import 'package:seyana_tech/network/models/AccountModel.dart';
part 'LoginResponse.g.dart';

@JsonSerializable()
class LoginResponse{
  int status;
  String message;
  AccountModel account;
  LoginResponse({this.status , this.message , this.account});
  factory LoginResponse.fromJson(Map<String , dynamic> json)=>
      _$LoginResponseFromJson(json);
  Map<String,dynamic> toJson() => _$LoginResponseToJson(this);




}