import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_views/please_wait_screen.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
import 'package:plant_sid_app/app_views/widgets/text_fields.dart';
import 'package:plant_sid_app/main.dart';
import 'package:plant_sid_app/app_views/phNumber_view.dart';


class RegisterScreen extends StatelessWidget {
  static String id = '/RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SingleChildScrollView(
        padding: EdgeInsets.only(top: 170),
        child:Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Create Your Account",
                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Container(

                    child: Column(
                      children: <Widget>[
                        CustomTextField(
                          obsecureVal: false,
                          hintTxt: "Johnson Doe",
                          fieldFillColor: textFieldFillColor,
                          prefixIcon: Icons.person,
                          onChanged: (value)
                          {
                            print(value);
                          },
                        ),
                        SizedBox(height: 20,),
                        CustomTextField(
                          obsecureVal: false,
                          hintTxt: "example@abc.com",
                          fieldFillColor: textFieldFillColor,
                          prefixIcon: Icons.mail,
                          onChanged: (value)
                          {
                            print(value);
                          },
                        ),
                        SizedBox(height: 20,),
                        CustomTextField(
                          obsecureVal: true,
                          hintTxt: "●●●●●●●●●",
                          fieldFillColor: textFieldFillColor,
                          prefixIcon: Icons.security,
                          suffixIcon: FontAwesomeIcons.eye,
                          onChanged: (value)
                          {
                            print(value);
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text("By Creating an account you accept the Terms & Condition of the Company",style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(

                    width: double.infinity,
                    child: CustomButton(buttonClr: orangeYellow,
                      btnText: "Register",
                      textColor: whiteColor,
                      elevationVal: false,
                      onPressed: (){
                        print("Register");

                        Navigator.pushNamed(context, PhoneNumber.id);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Expanded(child: Divider(
                            thickness: 2,
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or Register Using",style: TextStyle(
                            color: blackColor.withOpacity(0.4),
                          ),),
                        ),
                        Container(
                          child: Expanded(child: Divider(
                            thickness: 2,
                          )
                          ),
                        ),
                      ],

                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                      children:[
                        Expanded(
                            child:LoginLogoButton(
                              borderVal: false,
                              btnText: "Facebook",
                              buttonClr: facebookColor,
                              imagePath: 'assets/images/facebook-logo.png',

                              onPressed: (){},
                              textColor: whiteColor,
                            )
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                            child:LoginLogoButton(
                              borderVal: true,
                              btnText: "Google",
                              buttonClr: whiteColor,
                              imagePath: 'assets/images/google-logo.png',
                              onPressed: (){},
                              textColor: blackColor,
                            )
                        ),

                      ]

                  )
                ],

              ),
            ),
          ),


        ),


      ),



    );
  }
}
