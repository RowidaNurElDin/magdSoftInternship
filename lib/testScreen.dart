import 'package:flutter/material.dart';
import 'package:seyana_tech/network/responses/LoginResponse.dart';
import 'login.dart';
import 'network/requests/LoginRequest.dart';

class test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Scaffold(
          appBar: AppBar(),
          body: Text(
            'TEST LOGIN',
            style: TextStyle(
              fontSize: 50.0
            ),
          ),
        ),
        onPressed: ()async{
         // Login(context);
          LoginResponse loginResponse = await client.login(LoginRequest(phone: '00201128661674', password: '123456'));
             // .login(LoginRequest(phone: '00201128661674', password: '123456'));
          print(loginResponse.message);
        },
      )
    ;
  }
}
