import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_views/register_screen.dart';
import 'app_views/splash_screen.dart';
import 'app_views/login_screen.dart';
import 'app_views/please_wait_screen.dart';
import 'app_views/get_started.dart';


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

      },
      home: GetStarted(),
    );
  }
}



