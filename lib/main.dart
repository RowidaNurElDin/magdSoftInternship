import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:seyana_tech/stateful/Settings_Screen.dart';
import 'package:seyana_tech/stateful/contact_us_Screen.dart';
import 'package:seyana_tech/stateful/userProfile.dart';
import 'package:seyana_tech/stateless/welcome_Screen.dart';
import 'package:seyana_tech/testScreen.dart';
import 'network/service/service.dart';
import 'stateful/notifications_Screen.dart';
import 'stateless/about_us_Screen.dart';
import 'stateful/Settings_Screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

RestClient client;
Dio dio;

// void main(){
//   runApp(SeyanaTech());
// }

Future<void> main()async {
  dio = Dio();
  dio.interceptors.add(
    DioCacheManager(CacheConfig(
      defaultMaxAge: Duration(minutes: 15),
      defaultMaxStale: Duration(minutes: 15),
    )).interceptor
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options)async{
        debugPrintThrottled(options.method + ' ' + options.path);
        debugPrintThrottled(options.uri.toString());
        debugPrintThrottled(options.queryParameters.toString());
        return options;
      },
      onResponse: (Response response) async{
        debugPrintThrottled(response.data.toString());
        return response;
      }
    )
  );
  client = RestClient(dio);
  runApp(SeyanaTech());
}

class SeyanaTech extends StatefulWidget {
  @override
  _SeyanaTechState createState() => _SeyanaTechState();
}

class _SeyanaTechState extends State<SeyanaTech> {
  Locale _locale;
  void setLocale(Locale value){
    setState(() {
      _locale = value ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('ar', ''),
      ],
      home: test(),

    );
  }
}
