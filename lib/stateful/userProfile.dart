import 'package:flutter/material.dart';
import 'package:seyana_tech/reusableItems.dart';

class userProfile extends StatefulWidget {

  @override
  _userProfileState createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true ,
        title: Text(
          'الصفحة الشخصية',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'CareemBold',
              fontWeight: FontWeight.bold

          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 5.0,
                shape: CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tempImage.png'),
                  backgroundColor: Colors.grey, //temporary until uploading the real image
                  radius: 70.0,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Yousef Bisher',
                  style: TextStyle(
                    fontFamily: 'CareemRegular',
                    fontSize: 16,

                  ),
                ),
              ),
              Container(
                child: Text(
                  'Null2979@gmail.com',
                  style: TextStyle(
                    fontFamily: 'CareemRegular',
                    fontSize: 15,

                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              reused_Textfield('الاسم'),
              SizedBox(height: 20.0),
              reused_Textfield('رقم الهاتف'),
              SizedBox(height: 10.0),
              reused_Textfield('البريد الالكترونى'),
              SizedBox(height: 150.0),
              reusedButton('حفظ' , (){})

            ],
          ),
        ),
      ),
    );
  }
}
