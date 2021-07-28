import 'package:flutter/material.dart';
import 'package:seyana_tech/color.dart';
import 'package:seyana_tech/reusableItems.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class policies extends StatefulWidget {

  @override
  _policiesState createState() => _policiesState();
}

class _policiesState extends State<policies> {
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
          elevation: 0.0,
          centerTitle: true ,
          title: Text(
            AppLocalizations.of(context).termsAndConditions,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'CareemBold',
                fontWeight: FontWeight.bold

            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 168 / 375,
                height: MediaQuery.of(context).size.height * 168 / 812,
                child: Image(
                  image: AssetImage('assets/images/Artboard 1@3x.png'),
                ),
              ),
              textWidget(AppLocalizations.of(context).termsAndCond_Text,),
              textWidget(AppLocalizations.of(context).termsAndCond_Text,),

              SizedBox(height: 40.0,),
              reusedButton(AppLocalizations.of(context).agree, (){})


            ],
          ),
        ),
    );
  }
}

