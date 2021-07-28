import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seyana_tech/main.dart';
import 'package:seyana_tech/reusableItems.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int currentScreen = 0 ;
  List<Widget> screens=[]; //To be implemented
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).settings,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'CareemBold',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 168 / 375,
              height: MediaQuery.of(context).size.height * 168 / 812,
              child: Image(
                image: AssetImage('assets/images/Artboard 1@3x.png'),
              ),
            ),
            SettingsReusableCard(AppLocalizations.of(context).bankAccount, 'assets/images/wallet@3x.png',(){}),
            SettingsReusableCard(AppLocalizations.of(context).language, 'assets/images/worlwide@3x.png', () {
                }),
            SettingsReusableCard(AppLocalizations.of(context).contactUs, 'assets/images/call-center-worker-with-headset@3x.png',(){}),
            SettingsReusableCard(AppLocalizations.of(context).aboutApp, 'assets/images/about-us@3x.png',(){})
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (screenIndex){
          setState(() {
            currentScreen = screenIndex;
          });
        },
        currentIndex: currentScreen,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFF4B127),
        unselectedItemColor: Colors.grey[500],
        selectedLabelStyle: TextStyle(
          fontFamily: 'CareemRegular'
        ),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'CareemRegular',
        ),
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        iconSize: 30.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
            label: AppLocalizations.of(context).navSettings,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.person
                ),
              label: AppLocalizations.of(context).navProfile
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications
              ),

              label: AppLocalizations.of(context).navNotifications
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.sticky_note_2_outlined
              ),
              label: AppLocalizations.of(context).navMyOrders
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  FontAwesomeIcons.truck
              ),
            label: AppLocalizations.of(context).navHome
          ),


        ],
      ),
    );
  }
}
