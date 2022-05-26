import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_views/register_screen.dart';
import 'app_views/account_settings_view.dart';
import 'app_views/add-card.dart';
import 'app_views/change_address_view.dart';
import 'app_views/my_orders.dart';
import 'app_views/otp_view.dart';
import 'app_views/phNumber_view.dart';
import 'app_views/splash_screen.dart';
import 'app_views/login_screen.dart';
import 'app_views/please_wait_screen.dart';
import 'app_views/get_started.dart';
import 'app_views/generalSettings.dart';
import 'app_views/my_account_settings.dart';
import 'app_views/phNumber_view.dart';


void main() {
  runApp(PlanetSid());
}

class PlanetSid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        fontFamily: 'calibri'
      ),
      //initialRoute: splash_screen.id,
      routes: {
        //splash_screen.id: (context)=>splash_screen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegisterScreen.id: (context)=>RegisterScreen(),
        LoadingScreen.id: (context)=>LoadingScreen(),
        GeneralSettings.id:(context) => GeneralSettings(),
        MyOrders.id : (context) => MyOrders(),
        AccountSettings.id : (context) => AccountSettings(),
        ChangeAddress.id : (context) => ChangeAddress(),
        PhoneNumber.id : (context) => PhoneNumber(),
        OtpScreen.id : (context) => OtpScreen(),
      },
      home: GetStarted(),
    );
  }
}



