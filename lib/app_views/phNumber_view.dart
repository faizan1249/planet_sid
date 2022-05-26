import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'otp_view.dart';



class PhoneNumber extends StatefulWidget {
  static String id = '/phoneNumber';

  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60,

          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
              child: Column(

                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Container(
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Color(0xFFCBCBCB)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2, color: Color(0xFF9C9C9C)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            border: OutlineInputBorder(),
                          ),
                          initialCountryCode: 'PK',
                          showCountryFlag: false,
                          onChanged: (phone){
                            print(phone.completeNumber);
                            print(phone.countryCode);
                            print(phone.number);
                          },
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: CustomButton(buttonClr: orangeYellow,
                            btnText: "VERIFY",
                            textColor: whiteColor,
                            elevationVal: false,
                            onPressed: (){
                              Navigator.pushNamed(context, OtpScreen.id );
                            }),
                      ),
                    ],
                  )
                ],
              )

          ),

        ),

      ),
    );
  }
}
