import 'package:flutter/material.dart';
import 'package:seyana_tech/network/responses/LoginResponse.dart';
import 'package:seyana_tech/network/requests/LoginRequest.dart';
import 'package:seyana_tech/stateless/welcome_Screen.dart';
import 'package:seyana_tech/testDone.dart';
import 'network/service/service.dart';

RestClient client;

void Login (context) async{


  LoginResponse loginResponse = await client
      .login(LoginRequest(phone: '00201128661674', password: '123456'));


  print("DEBUG");
  if (loginResponse.status != null && loginResponse.status == 200) {

    print(loginResponse.message);

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => welcomeScreen(),
        ),
            (Route<dynamic> route) => false);
  } else {
    Navigator.pop(context);
    // showMyToast("هناك خطأ ما , يرجى المحاولة لاحقا !");
    if (loginResponse.message != null) {
      print(loginResponse.message);
    }
    if (loginResponse.status == 419) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              backgroundColor: Colors.transparent,
              child: Done());
        },
      );
    }
  }
}


