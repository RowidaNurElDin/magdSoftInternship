import 'package:flutter/material.dart';
import 'package:seyana_tech/reusableItems.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class notifScreen extends StatefulWidget {

  @override
  _notifScreenState createState() => _notifScreenState();
}

class _notifScreenState extends State<notifScreen> {
  int currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).notifications,
          textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'CareemBold',
              fontWeight: FontWeight.bold),
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
            label: AppLocalizations.of(context).settings,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  FontAwesomeIcons.user
              ),
              label: AppLocalizations.of(context).profile
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.notifications
              ),

              label: AppLocalizations.of(context).notifications
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.minimize_outlined
              ),
              label: AppLocalizations.of(context).navMyOrders
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.minimize_outlined
              ),
              label:AppLocalizations.of(context).navHome
          ),


        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Color(0xFFFB9800),
                      size: 40.0,
                    ),
                    Column(
                      children: [
                        Text(
                          AppLocalizations.of(context).notificationsText1,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'CareemRegular',
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 5.0,),
                        Text(
                          'Today , 01:50 pm',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontFamily: 'CareemRegular',
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

            ),
          )
        ],
      ),

    );
  }
}
