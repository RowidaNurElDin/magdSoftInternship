import 'package:flutter/material.dart';
import 'package:seyana_tech/color.dart';
import 'package:seyana_tech/reusableItems.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class aboutUs extends StatelessWidget {

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
          AppLocalizations.of(context).navSettings,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'CareemBold',
            fontWeight: FontWeight.bold

          ),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * (49/812),
              left: MediaQuery.of(context).size.height * (35/375),
              right: MediaQuery.of(context).size.height * (35/375),
              bottom: 36.8
            ),
            child: Text(
              AppLocalizations.of(context).aboutUsText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'CareemRegular',
                fontSize: 18,
                height: 1.2
              ),
            ),
          ),
          AboutUsReusableTitle(AppLocalizations.of(context).email),
          AboutUsReusableCard('Appadmin@exmple.com'),
          AboutUsReusableTitle(AppLocalizations.of(context).phoneNumber),
          AboutUsReusableCard('+1542154544422')
        ],
      ),
    );
  }
}

