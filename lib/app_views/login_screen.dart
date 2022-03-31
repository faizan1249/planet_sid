import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginScreen extends StatelessWidget {
  static String id = '/loginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   SingleChildScrollView(
        padding: EdgeInsets.only(top: 170),
            child:Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
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
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail),
                                fillColor: Color(0xFFE8E8E8),
                                filled: true,
                                border: InputBorder.none,
                                hintText: "example@abc.com",
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.security),
                                fillColor: Color(0xFFE8E8E8),
                                filled: true,
                                border: InputBorder.none,
                                hintText: "●●●●●●●●●",
                                contentPadding: EdgeInsets.symmetric(vertical: 20),
                              ),
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
                        child: CustomButton(buttonClr: Color(0xFFFFB614), btnText: "Continue", textColor: Colors.white, elevationVal: false, onPressed: (){},),
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
                                color: Colors.black.withOpacity(0.4),
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
                                  buttonClr: Color(0xFF1877F2),
                                  imagePath: 'assets/images/facebook-logo.png',

                                  onPressed: (){},
                                  textColor: Colors.white,
                                )
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                                child:LoginLogoButton(
                                  borderVal: true,
                                  btnText: "Google",
                                  buttonClr: Colors.white,
                                  imagePath: 'assets/images/google-logo.png',

                                  onPressed: (){},
                                  textColor: Colors.black,
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




