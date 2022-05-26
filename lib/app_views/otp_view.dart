import 'package:flutter/material.dart';
import 'package:plant_sid_app/app_constants/app_colors.dart';
import 'package:plant_sid_app/app_constants/constants.dart';
import 'package:plant_sid_app/app_views/widgets/custom_buttom.dart';

class OtpScreen extends StatelessWidget {
  static String id = '/otp_screen';
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
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("Enter The 4 digit code that was send to your Mobile Number",

                      textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: OtpForm(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: CustomButton(buttonClr: orangeYellow,
                          btnText: "VERIFY",
                          textColor: whiteColor,
                          elevationVal: false,
                          onPressed: (){
                            //Navigator.pushNamed(context, OtpScreen.id );
                            CircularProgressIndicator();
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Resend Again ?" ,style: TextStyle(color: orangeYellow,fontSize: 14),),
                      ],
                    ),
                  )
                ],
              )

          ),

        ),
      ),
    );
  }
}



class OtpForm extends StatefulWidget {


  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {

    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();

  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }
  void NextField ({String? value, FocusNode? focusNode})
  {
    if(value!.length==1){
      focusNode!.requestFocus();
    }
  }
  bool isEnabled = true;
  bool isReadOnly = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         SizedBox(height: MediaQuery.of(context).size.height*0.10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:8),
                child:    SizedBox(
                  width: 60,
                  child: TextFormField(
                    enabled: isEnabled,
                    readOnly: isReadOnly,
                    autofocus: true,
                    obscureText: false,
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    onChanged: (value)
                    {
                      NextField(value: value,focusNode: pin2FocusNode);
                    },

                    decoration: otpFormDecoraton,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:8),
                child:    SizedBox(
                  width: 60,
                  child: TextFormField(
                    enabled: isEnabled,
                    readOnly: isReadOnly,
                    focusNode: pin2FocusNode,
                    autofocus: true,
                    obscureText: false,
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    onChanged: (value)
                    {
                      NextField(value: value,focusNode: pin3FocusNode);
                    },

                    decoration: otpFormDecoraton,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:8),
                child:    SizedBox(
                  width: 60,
                  child: TextFormField(
                    enabled: isEnabled,
                    readOnly: isReadOnly,
                    focusNode: pin3FocusNode,
                    autofocus: true,
                    obscureText: false,
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    onChanged: (value)
                    {
                      NextField(value: value,focusNode: pin4FocusNode);
                    },

                    decoration: otpFormDecoraton,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:8),
                child:    SizedBox(
                  width: 60,
                  child: TextFormField(
                    enabled: isEnabled,
                    readOnly: isReadOnly,
                    focusNode: pin4FocusNode,
                    autofocus: true,
                    obscureText: false,
                    style: TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,

                    onChanged: (value)
                    {
                      setState(() {
                        isReadOnly = true;
                        isEnabled = false;
                      });

                    },

                    decoration: otpFormDecoraton,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class OtpFomBoxes extends StatefulWidget {
//   OtpFomBoxes({
//     required this.focusNode,
// });
//   FocusNode focusNode;
//
//
//   @override
//   _OtpFomBoxesState createState() => _OtpFomBoxesState();
// }
//
// class _OtpFomBoxesState extends State<OtpFomBoxes> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
//
