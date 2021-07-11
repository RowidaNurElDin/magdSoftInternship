import 'package:flutter/material.dart';
import 'package:seyana_tech/stateful/userProfile.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'stateful/notifications_Screen.dart';
import 'stateless/about_us_Screen.dart';
import 'package:easy_localization/easy_localization.dart';


void main() {
  runApp(SeyanaTech());
}

class SeyanaTech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: aboutUs(),

    );
  }
}
