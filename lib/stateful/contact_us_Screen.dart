import 'package:flutter/material.dart';
import 'package:seyana_tech/color.dart';
import 'package:seyana_tech/reusableItems.dart';


class contactUs extends StatefulWidget {

  @override
  _contactUsState createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.arrowOrange,
            size: 30,
          ),

        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'اتصل بنا',
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'CareemBold',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40.0,),
            reused_Textfield('الاسم'),
            SizedBox(height: 20.0,),
            reused_Textfield('رقم الهاتف'),
            SizedBox(height: 20.0,),
            reused_Textfield('البريد الالكترونى'),
            SizedBox(height: 50.0,),
            Container(
              height: 7 * 24.0,
              child: TextField(
                maxLines: 7,
                  textAlign: TextAlign.right,
                  enabled: true,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'الشكوى',
                      hintStyle: TextStyle(
                          fontFamily: 'CareemRegular',
                          fontSize: 20.0,
                          color: Colors.grey[500]
                      ),
                      fillColor: Color(0xfffef0d9),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xfffef0d9)
                          ),
                          borderRadius: BorderRadius.circular(3.0)

                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xfffef0d9)
                          ),
                          borderRadius: BorderRadius.circular(10.0)

                      )
                  )
              ),
            ),
            SizedBox(height: 160.0,),
            reusedButton('إرسال' , (){}),
          ],
        ),
      ),
    );
  }
}


