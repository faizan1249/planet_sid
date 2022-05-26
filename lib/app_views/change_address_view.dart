import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';


class ChangeAddress extends StatefulWidget {
  static String id = '/change_address';

  @override
  _ChangeAddressState createState() => _ChangeAddressState();
}

class _ChangeAddressState extends State<ChangeAddress> {
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
          actions: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Icon(Icons.notification_add,color: Colors.black,),
            ),

          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Container(
                      child:Text("Address",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: CupertinoColors.black),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: TextFormField(
                        minLines: 5,
                        maxLines: 10,
                        style: TextStyle(fontSize: 18),
                        keyboardType: TextInputType.multiline,
                        decoration: AddressFieldDecoration,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: CustomButton(buttonClr: orangeYellow,
                              btnText: "CHANGE",
                              textColor: whiteColor,
                              elevationVal: false,
                              onPressed: (){print("Change");}),
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
