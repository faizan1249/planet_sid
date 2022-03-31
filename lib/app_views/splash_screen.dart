import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:plant_sid_app/app_views/register_screen.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
import 'package:plant_sid_app/main.dart';

import 'login_screen.dart';


class splash_screen extends StatelessWidget {

  static String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50,),
              Text("Welcome to PlanetSid",
                textAlign: TextAlign.center,
                style: welcomeTextStyle
              ),
              SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        decoration: splash_logo_container2,
                        width: 300,
                        height: 300,
                      ),
                      Container(
                        decoration: splash_logo_container1,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        width: 190,
                        height: 190,
                        child:Image.asset('assets/images/logo/logo_planetsid.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(height: 70,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: CustomButton(
                            btnText: "Login",
                            buttonClr: orangeYellow,
                            textColor: Colors.white,
                            elevationVal: true,
                            onPressed: (){
                              Navigator.pushNamed(context,LoginScreen.id);
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: CustomButton(
                              btnText: "SignUp",
                              buttonClr: Colors.white,
                              textColor: Colors.black,
                              elevationVal: false,
                              onPressed: (){
                                Navigator.pushNamed(context, RegisterScreen.id);
                              },
                          ),
                        ),

                      ],
                    ),
                  )

                ],
              )
            ],
          ),
        ],

      ),
    );
  }
}








