import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_sid_app/app_views/widgets/text_fields.dart';
import 'package:plant_sid_app/model/bottombarModel.dart';



class LoginScreen extends StatelessWidget {
  static String id = '/loginScreen';
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
                      Text("Hey, Welcome Back !",
                        style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Container(

                        child: Column(
                          children: <Widget>[
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Forgot Password",style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Container(

                        width: double.infinity,
                        child: CustomButton(buttonClr: orangeYellow,
                          btnText: "Continue",
                          textColor: whiteColor,
                          elevationVal: false,
                          onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomBar()));
                          },),
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
                              child: Text("Or Login Using",style: TextStyle(
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




